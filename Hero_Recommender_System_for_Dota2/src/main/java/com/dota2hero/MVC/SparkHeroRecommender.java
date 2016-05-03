package com.dota2hero.MVC;
import org.apache.log4j.Level;

import org.apache.log4j.Logger;
import org.apache.spark.SparkConf;
import org.apache.spark.api.java.JavaDoubleRDD;
import org.apache.spark.api.java.JavaPairRDD;
import org.apache.spark.api.java.JavaRDD;
import org.apache.spark.api.java.JavaSparkContext;
import org.apache.spark.api.java.function.Function;
import org.apache.spark.api.java.function.Function2;
import org.apache.spark.api.java.function.PairFunction;
import org.apache.spark.mllib.recommendation.MatrixFactorizationModel;
import org.apache.spark.mllib.recommendation.Rating;
import org.apache.spark.rdd.RDD;
import org.apache.spark.storage.StorageLevel;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonParser;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;

import scala.Tuple2;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.*;


public class SparkHeroRecommender {
    public static final String LINE_SEPERATOR = " ";
    public static final String RESOURCE_PATH = "src/main/java/"; //absoulute path to the directory that the data files are stored
    public static final String RATINGS_FILE_NAME = "sparkRatings.txt";
    public static final String MOVIES_FILE_NAME = "sparkHero.txt";
    public static final String APP_NAME = "HeroRecommendation";
    public static final String CLUSTER = "local";
    private static JavaSparkContext sc;
    private static HashMap<String,String> heromap;
    
    public static void main(String[] args) {
    	getRecommendResult(62);
    }
    
    public SparkHeroRecommender() throws FileNotFoundException
	{
		HashMap<String,String> hlist = new HashMap<String,String>();
		for(int i=0;i<getHero().size();i++)
		{
			hlist.put(getHero().get(i).getId(), getHero().get(i).getLocalized_name());
		}
		SparkHeroRecommender.heromap = hlist;
	}

    public static List<Rating> getRecommendResult(int userId) {
        //Setting up log levels
        Logger.getLogger("org").setLevel(Level.OFF);
        Logger.getLogger("akka").setLevel(Level.OFF);

        //Initializing Spark
        SparkConf conf = new SparkConf().setAppName(APP_NAME).setMaster(CLUSTER);
        sc = new JavaSparkContext(conf);
        File dir1 = new File("src/main/java/data");
        File dir2 = new File("src/main/java/metadata");

        if(!dir1.exists() && !dir2.exists())
        	CollaborativeFiltering.buildCollaborativeFilteringModel(conf, sc);
        //Reading external data
        final JavaRDD<String> ratingData = sc.textFile(RESOURCE_PATH + RATINGS_FILE_NAME);
        JavaRDD<String> productData = sc.textFile(RESOURCE_PATH + MOVIES_FILE_NAME);

        JavaRDD<Tuple2<Integer, Rating>> ratings = ratingData.map(
                new Function<String, Tuple2<Integer, Rating>>() {
                    public Tuple2<Integer, Rating> call(String s) throws Exception {
                        String[] row = s.split(LINE_SEPERATOR);
                        Integer cacheStamp = Integer.parseInt(row[3]) % 10;
                        Rating rating = new Rating(Integer.parseInt(row[0]), Integer.parseInt(row[1]), Double.parseDouble(row[2]));
                        return new Tuple2<Integer, Rating>(cacheStamp, rating);
                    }
                }
        );

        Map<Integer, String> products = productData.mapToPair(
                new PairFunction<String, Integer, String>() {
                    public Tuple2<Integer, String> call(String s) throws Exception {
                        String[] sarray = s.split(LINE_SEPERATOR);
                        return new Tuple2<Integer, String>(Integer.parseInt(sarray[0]), sarray[1]);
                    }
                }
        ).collectAsMap();
        System.out.println("Loading model");
        MatrixFactorizationModel bestModel = MatrixFactorizationModel.load(sc.sc(), "src/main/java");
        List<Rating> recommendations = getRecommendations(userId, bestModel, ratings, products);
        for (Rating recommendation : recommendations) {
            if (products.containsKey(recommendation.product())) {
                System.out.println(recommendation.user() + " " + recommendation.product() + " " + products.get(recommendation.product()));
            }
        }
        return recommendations;

    }
    
    private static List<Rating> getRecommendations(final int userId, MatrixFactorizationModel model, JavaRDD<Tuple2<Integer, Rating>> ratings, Map<Integer, String> products) {
        List<Rating> recommendations;

        JavaRDD<Rating> userRatings = ratings.filter(
                new Function<Tuple2<Integer, Rating>, Boolean>() {
                    public Boolean call(Tuple2<Integer, Rating> tuple) throws Exception {
                        return tuple._2().user() == userId;
                    }
                }
        ).map(
                new Function<Tuple2<Integer, Rating>, Rating>() {
                    public Rating call(Tuple2<Integer, Rating> tuple) throws Exception {
                        return tuple._2();
                    }
                }
        );

        //Getting the product ID's of the products that user rated
        JavaRDD<Tuple2<Object, Object>> userProducts = userRatings.map(
                new Function<Rating, Tuple2<Object, Object>>() {
                    public Tuple2<Object, Object> call(Rating r) {
                        return new Tuple2<Object, Object>(r.user(), r.product());
                    }
                }
        );

        List<Integer> productSet = new ArrayList<Integer>();
        productSet.addAll(products.keySet());

        Iterator<Tuple2<Object, Object>> productIterator = userProducts.toLocalIterator();

        //Removing the user watched (rated) set from the all product set
        while(productIterator.hasNext()) {
            Integer movieId = (Integer)productIterator.next()._2();
            if(productSet.contains(movieId)){
                productSet.remove(movieId);
            }
        }

        JavaRDD<Integer> candidates = sc.parallelize(productSet);

        JavaRDD<Tuple2<Integer, Integer>> userCandidates = candidates.map(
                new Function<Integer, Tuple2<Integer, Integer>>() {
                    public Tuple2<Integer, Integer> call(Integer integer) throws Exception {
                        return new Tuple2<Integer, Integer>(userId, integer);
                    }
                }
        );

        //Predict recommendations for the given user
        recommendations = model.predict(JavaPairRDD.fromJavaRDD(userCandidates)).collect();

        //Sorting the recommended products and sort them according to the rating
        Collections.sort(recommendations, new Comparator<Rating>() {
            public int compare(Rating r1, Rating r2) {
                return r1.rating() < r2.rating() ? -1 : r1.rating() > r2.rating() ? 1 : 0;
            }
        });

        //get top 5 from the recommended products.
        recommendations = recommendations.subList(0, 5);

        return recommendations;
    }
    public static List<Hero> getHero() throws FileNotFoundException
	{
		final Type REVIEW_TYPE = new TypeToken<List<Hero>>() {}.getType();
		Gson gson = new Gson();
		JsonReader reader = new JsonReader(new FileReader("src/main/webapp/resources/json/hero_id.json"));
		JsonParser parser = new JsonParser();
		JsonArray jArray = (JsonArray) parser.parse(reader).getAsJsonObject().get("heroes");

		List<Hero> hlist =  gson.fromJson(jArray, REVIEW_TYPE);
		return hlist;
	}
    public static List<RecommenderResult> getResult(List<Rating> LC) throws FileNotFoundException
	{
		List<RecommenderResult>  l = new ArrayList<RecommenderResult>();
		if(LC!=null)
		{
			for(int i =0;i<LC.size();i++)
			{
				RecommenderResult rr = new RecommenderResult(String.valueOf(LC.get(i).user()),heromap.get(
						LC.get(i).product()),LC.get(i).rating());
				l.add(rr);
			}
		}
		return l;	
	}
}
