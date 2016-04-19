package com.dota2hero.MVC;

import java.util.*;

public class HeroRecommender {
	private static DataBase db;
	public HeroRecommender()
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
		int i = 0;
		for (Contribution c : l.subList(0, 5)) {
			if (i < 10000) {
				System.out.println(c.toString());
				i++;
			}
		}
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
}
