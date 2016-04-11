package com.dota2hero.MVC;

import java.util.ArrayList;
import java.util.List;

public class DataBase {
	final List<Player> players;
	final List<Hero> heros;
	final List<Contribution> contributions;
	
	public DataBase() {
		this.players = new ArrayList<Player>();
		this.heros = new ArrayList<Hero>();
		this.contributions = new ArrayList<Contribution>();
	}
	
	public List<Player> getPlayers() {
		return players;
	}
	public Player getPlayerById(String id) {
		for(Player p : players) {
			if(p.getPlayerId().equals(id))
				return p;
		}
		return null;
	}
	public List<Hero> getHeros() {
		return heros;
	}
	public Hero getHeroById(String id) {
		for(Hero h : heros) {
			if(h.getId().equals(id))
				return h;
		}
		return null;
	}
	public List<Contribution> getContributions() {
		return contributions;
	}

	public List<Contribution> getContributionsByPlayerId(String p) {
		// TODO Auto-generated method stub
		List<Contribution> listRating = new ArrayList<Contribution>();
		for(Contribution c : contributions) {
			if(c.getPlayerId().equals(p)) {
				listRating.add(c);
			}
		}
		return listRating;
	}
	public List<Contribution> getContributionsByHeroId(String h) {
		// TODO Auto-generated method stub
		List<Contribution> listRating = new ArrayList<Contribution>();
		for(Contribution c : contributions) {
			if(c.getHeroId().equals(h)) {
				listRating.add(c);
			}
		}
		return listRating;
	}
}
