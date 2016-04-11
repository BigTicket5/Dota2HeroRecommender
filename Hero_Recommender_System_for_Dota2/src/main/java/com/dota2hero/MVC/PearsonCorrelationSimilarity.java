package com.dota2hero.MVC;

import java.util.List;
//this function is used to calculate the Pearson correlation similarity.
public class PearsonCorrelationSimilarity implements SimilarityStrategy {
	double similarity;
	public double computeSimilarity(DataBase f, String player1, String player2) {
		List<Contribution> player1Contributions = f.getContributionsByPlayerId(player1);
		List<Contribution> player2Contributions = f.getContributionsByPlayerId(player2);
		double sum1 = 0.0, sum2 = 0.0;
		for(int i = 0; i < player1Contributions.size(); i++) {
			sum1 += player1Contributions.get(i).getContribution();
			sum2 += player2Contributions.get(i).getContribution();
		}
		double mean1 = sum1 / player1Contributions.size();
		double mean2 = sum2 / player2Contributions.size();
		//System.out.println(player1Contributions.size());
		double length1 = 0.0;
		double length2 = 0.0;
		for(Contribution r : player1Contributions) {
			length1 += Math.pow(r.getContribution() - mean1, 2);
		}
		for(Contribution r : player2Contributions) {
			length2 += Math.pow(r.getContribution() - mean2, 2);
		}
		double sumProduct = 0.0;
		for(int i = 0; i < player1Contributions.size(); i++) {
			sumProduct += (player1Contributions.get(i).getContribution() - mean1) * (player2Contributions.get(i).getContribution() - mean2);
		}
		similarity = sumProduct / (Math.sqrt(length1) * Math.sqrt(length2));
		return similarity;
	}
}