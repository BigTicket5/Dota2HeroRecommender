package com.dota2hero.MVC;
import java.util.*;
public class Similarity {
	public Map<Pair<Player, Player>, Double> similarities;
	private final DataBase Herocontribution;
	private SimilarityStrategy simelarityStrategy;
	
	public Similarity(DataBase Herocontribution, SimilarityStrategy simelarityStrategy) {
		this.Herocontribution = Herocontribution;
		this.simelarityStrategy = simelarityStrategy;
		computeSimilarities();
	}
	
	private void computeSimilarities() {
		// TODO Auto-generated method stub
		this.similarities = new HashMap<Pair<Player,Player>, Double>();
		for(Player p1 : Herocontribution.getPlayers()) {
			for(Player p2 : Herocontribution.getPlayers()) {
				if(!p1.equals(p2)) {
					this.similarities.put(new Pair<Player, Player>(p1, p2), simelarityStrategy.computeSimilarity(Herocontribution, p1.getPlayerId(), p2.getPlayerId()));
					/* print the similarity */
					//System.out.println(p1.getPlayerId() + " " + p2.getPlayerId() + " " + getSimilarityByPlayers(p1, p2));
				}
			}
		}
		//System.out.println(similarities.get(new Pair<Player, Player>(Herocontribution.getPlayerById("97"), Herocontribution.getPlayerById("99"))));
	}
	public double getSimilarityByPair(Pair<Player, Player> pair) {
		return this.similarities.get(pair);
	}
	public Double getSimilarityByPlayers(Player p1, Player p2) {
		return this.similarities.get(new Pair<Player, Player>(p1, p2));
	}
}
