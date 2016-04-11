package com.dota2hero.MVC;

public class Contribution {
	private String playerId;
	private String HeroId;
	private Double contribution;

	public Contribution(String playerId, String heroId, Double contribution) {
		super();
		this.playerId = playerId;
		this.HeroId = heroId;
		this.contribution = contribution;
	}
	public Contribution(String playerId, String heroId) {
		super();
		this.playerId = playerId;
		this.HeroId = heroId;
	}
	public String getPlayerId() {
		return playerId;
	}
	public void setPlayerId(String playerId) {
		this.playerId = playerId;
	}
	public String getHeroId() {
		return HeroId;
	}
	public void setHeroId(String heroId) {
		HeroId = heroId;
	}
	public double getContribution() {
		return contribution;
	}
	public void setContribution(double contribution) {
		this.contribution = contribution;
	}
	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		if(obj instanceof Contribution) {
			Contribution other = (Contribution)obj;
			return this.playerId.equals(other.playerId)
				&& this.HeroId.equals(other.HeroId)
				&& this.contribution == other.contribution; 
		}
		else {
			return false;
		}
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "playerId" + " : " + playerId + " " + "heroId" + " : " + HeroId + " " + 
		"contribution" + " : " + contribution;
	}
}
