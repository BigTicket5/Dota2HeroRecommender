package com.dota2hero.MVC;

public interface SimilarityStrategy {
	
	public double computeSimilarity(DataBase f, String player1, String player2);
	
}
