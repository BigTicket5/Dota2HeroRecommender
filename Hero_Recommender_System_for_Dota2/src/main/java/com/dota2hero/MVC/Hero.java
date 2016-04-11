package com.dota2hero.MVC;

import java.util.*;

public class Hero {
	public String id;
	
	public Hero(String id) {
		super();
		this.id = id;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		if(obj instanceof Hero) {
			Hero other = (Hero)obj;
			return this.id.equals(other.id); 
		}
		else {
			return false;
		}
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.id;
	}
	
}
