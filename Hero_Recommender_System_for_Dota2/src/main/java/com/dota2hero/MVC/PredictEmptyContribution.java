package com.dota2hero.MVC;

import java.util.*;

public class PredictEmptyContribution extends DataBase {
	private int k;
	private List<Contribution> top5;
	public PredictEmptyContribution(DataBase db, Similarity s, int k) {
		super();
		this.k = k;
		this.players.addAll(db.getPlayers());
		this.heros.addAll(db.getHeros());
		//this.contributions.addAll(db.getContributions());
		predict(db, s);
	}
	public List<Contribution> predict(DataBase db, Similarity s) {
		for(Contribution c : db.getContributions()) {
			if(c.getContribution() == 0) {
				List<Contribution> player1Contributions = db.getContributionsByPlayerId(c.getPlayerId());
				double sumPlayer1 = 0.0;
				//System.out.println(player1Contributions.size());
				for(Contribution c1 : player1Contributions) {
					//System.out.println("player111 = " + sumPlayer1);
					sumPlayer1 += c1.getContribution();
				}
				double meanPlayer1 = sumPlayer1 / player1Contributions.size();
				List<Pair<Contribution, Double>> contributionSimilarity = findContributionSimilarity(c, db, s);
				double sumPlayer2 = 0.0;
				for(Pair<Contribution, Double> c2 : contributionSimilarity) {
					sumPlayer2 += c2.getNum1().getContribution();
				}
				double meanPlayer2 = sumPlayer2 / contributionSimilarity.size();
				double prod = 0.0, sumSimilarity = 0.0;
				//System.out.println(contributionSimilarity.size());
				for(Pair<Contribution, Double> p : contributionSimilarity) {
					if(p.getNum1() != null && p.getNum2() != null) {
						prod += p.getNum1().getContribution() * p.getNum2();
					//System.out.println("prod = " + prod);
						sumSimilarity += p.getNum2() - meanPlayer2;
					}
					//System.out.println("sim = " + sumSimilarity);
				}
				double predict = 0.0;
				if (sumSimilarity > 0) {
					predict = /*meanPlayer1 +*/ prod / sumSimilarity;
					//System.out.println("predict = " + sumSimilarity);
					this.contributions.add(new Contribution(c.getPlayerId(),c.getHeroId(), predict));
				} 
					else {
					this.contributions.add(new Contribution(c.getPlayerId(), c.getHeroId(), 0.0));
				}
				///System.out.println("predict = " + predict);
			} else {
				this.contributions.add(new Contribution(c.getPlayerId(), c.getHeroId(), 0.0));
			}
		}
		return contributions;
	}
	public List<Pair<Contribution, Double>> findContributionSimilarity(Contribution thisContribution, DataBase db, Similarity s) {
		List<Pair<Contribution, Double>> res = new ArrayList<Pair<Contribution, Double>>();
		for(Contribution c : db.getContributionsByHeroId(thisContribution.getHeroId())) {
			//if(!c.equals(thisContribution) && c.getContribution() > 0) {
				Double similarity = 0.0;
//				System.out.println("?????");
				//if(s.getSimilarityByPlayers(new Player(thisContribution.getPlayerId()), new Player(c.getPlayerId()) != null)) {
					//System.out.println("!!!!!!!!!!!!!!!");
					similarity = s.getSimilarityByPlayers(db.getPlayerById(thisContribution.getPlayerId()), db.getPlayerById(c.getPlayerId()));
					//System.out.println("Similar = = = = " + similarity);
					if(similarity != null)
						res.add(new Pair<Contribution, Double>(c, similarity));
			//}
		}
		//System.out.println("size:" + res.size());
		if (res.size() < 2) {
			res.clear();
			return res;
		}
		int length = (res.size() > k) ? k : res.size();
//		List<Pair<Contribution, Double>> ll = new ArrayList<Pair<Contribution, Double>>(res.subList(0, length));
//		for(Pair<Contribution, Double> p : res) {
//			System.out.println(p.getNum2());
//		}
		return res;
	}

}
