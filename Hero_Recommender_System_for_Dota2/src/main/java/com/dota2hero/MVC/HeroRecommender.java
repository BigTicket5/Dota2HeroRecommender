package com.dota2hero.MVC;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.lang.reflect.Type;
import java.util.*;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonParser;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;


public class HeroRecommender {
	private static DataBase db;
	public HeroRecommender() throws FileNotFoundException
	{
		HeroRecommender.db = new DataReader("src/main/java/test.csv");
	}
	public static void main(String[] args) {
		recommendBasedCosineSimilarity("4");
		recommendBasedPearsonCorrelationSimilarity("4");
	}

	public static List<Contribution> recommendBasedCosineSimilarity(
			String playerId) {
		SimilarityStrategy cosine = new CosineSimilarity();
		Similarity similarity = new Similarity(db, cosine);
		// System.out.println(similarity.similarities.get(new Pair<Player,
		// Player>(db.getPlayerById("99"), db.getPlayerById("97"))));
		PredictEmptyContribution predictContribution = new PredictEmptyContribution(
				db, similarity, 20);
		List<Contribution> l = predictContribution
				.getContributionsByPlayerId(playerId);
		Collections.sort(l, new Comparator<Contribution>() {
			public int compare(Contribution c1, Contribution c2) {
				return Double.compare(c2.getContribution(),
						c1.getContribution());
			}
		});
//		int i = 0;
//		for (Contribution c : l.subList(0, 5)) {
//			if (i < 10000) {
//				System.out.println(c.toString());
//				i++;
//			}
//		}
		return l.subList(0, 5);
	}

	public static List<Contribution> recommendBasedPearsonCorrelationSimilarity(
			String playerId) {
		SimilarityStrategy cosine = new PearsonCorrelationSimilarity();
		Similarity similarity = new Similarity(db, cosine);
		// System.out.println(similarity.similarities.get(new Pair<Player,
		// Player>(db.getPlayerById("99"), db.getPlayerById("97"))));
		PredictEmptyContribution predictContribution = new PredictEmptyContribution(
				db, similarity, 20);
		List<Contribution> l = predictContribution
				.getContributionsByPlayerId(playerId);
		Collections.sort(l, new Comparator<Contribution>() {
			public int compare(Contribution c1, Contribution c2) {
				return Double.compare(c2.getContribution(),
						c1.getContribution());
			}
		});
		return l.subList(0, 5);
	}

	public boolean isExistPlayer(String playerId) {
		List<Player> players = db.getPlayers();
		for (Player p : players) {
			if (p.getPlayerId().equals(playerId))
				return true;
		}
		return false;
	}
	
	public static List<RecommenderResult> getResult(List<Contribution> LC) throws FileNotFoundException
	{
		HashMap<String,String> hlist = new HashMap<String,String>();
		for(int i=0;i<getHero().size();i++)
		{
			hlist.put(getHero().get(i).getId(), getHero().get(i).getLocalized_name());
		}
		List<RecommenderResult>  l = new ArrayList<RecommenderResult>();
		if(LC!=null)
		{
			for(int i =0;i<LC.size();i++)
			{
				RecommenderResult rr = new RecommenderResult(LC.get(i).getPlayerId(),hlist.get(
						LC.get(i).getHeroId()),LC.get(i).getContribution());
				l.add(rr);
			}
		}
		return l;	
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
}
