package com.dota2hero.MVC;

import java.util.*;

public class CosineSimilarity implements SimilarityStrategy {
	double similarity;
	public double computeSimilarity(DataBase f, String player1, String player2) {
		List<Contribution> player1Contributions = f.getContributionsByPlayerId(player1);
		List<Contribution> player2Contributions = f.getContributionsByPlayerId(player2);
		double sum = 0.0;
		for(int i = 0; i < player1Contributions.size(); i++) {
			sum += player1Contributions.get(i).getContribution() * player2Contributions.get(i).getContribution();
		}
		double length1 = 0.0;
		double length2 = 0.0;
		for(Contribution r : player1Contributions) {
			length1 += Math.pow(r.getContribution(), 2);
		}
		for(Contribution r : player2Contributions) {
			length2 += Math.pow(r.getContribution(), 2);
		}
		similarity = sum / (Math.sqrt(length1) * Math.sqrt(length2));
		return similarity;
	}
}
