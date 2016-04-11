package com.dota2hero.MVC;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class Player {
	private String playerId;
	
	public Player(String playerId) {
		super();
		this.playerId = playerId;
	}
	public String getPlayerId() {
		return playerId;
	}
	public void setPlayerId(String playerId) {
		this.playerId = playerId;
	}
	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		if(obj instanceof Player) {
			Player other = (Player)obj;
			return this.playerId.equals(other.playerId); 
		}
		else {
			return false;
		}
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.playerId;
	}
}
