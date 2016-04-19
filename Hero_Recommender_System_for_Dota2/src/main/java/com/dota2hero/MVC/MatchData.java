package com.dota2hero.MVC;

public class MatchData {
	private String matchseq;
	private String accountid;
	private int heroid;
	private int kill;
	private int death;
	private int assist;
	
	public String getAccountid() {
		return accountid;
	}
	public void setAccountid(String accountid) {
		this.accountid = accountid;
	}
	public int getHeroid() {
		return heroid;
	}
	public void setHeroid(int heroid) {
		this.heroid = heroid;
	}
	public int getKill() {
		return kill;
	}
	public void setKill(int kill) {
		this.kill = kill;
	}
	public int getDeath() {
		return death;
	}
	public void setDeath(int death) {
		this.death = death;
	}
	public int getAssist() {
		return assist;
	}
	public void setAssist(int assist) {
		this.assist = assist;
	}
	public String getMatchseq() {
		return matchseq;
	}
	public void setMatchseq(String matchseq) {
		this.matchseq = matchseq;
	}

}
