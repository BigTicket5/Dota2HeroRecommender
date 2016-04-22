package com.dota2hero.MVC;

public class RecommenderResult {
	private String playerId;
	private String Heroname;
	private Double contribution;
	public RecommenderResult(String Id, String Name,
			double cb) {
		// TODO Auto-generated constructor stub
		this.playerId = Id;
		this.Heroname = Name;
		this.contribution = cb;
	}
	public String getPlayerId() {
		return playerId;
	}
	public void setPlayerId(String playerId) {
		this.playerId = playerId;
	}
	public String getHeroname() {
		return Heroname;
	}
	public void setHeroname(String heroname) {
		Heroname = heroname;
	}
	public Double getContribution() {
		return contribution;
	}
	public void setContribution(Double contribution) {
		this.contribution = contribution;
	} 
}
