package com.dota2hero.MVC;

import java.util.*;

public class Hero {
	public String id;
	private String name;
	private String localized_name;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLocalized_name() {
		return localized_name;
	}
	public void setLocalized_name(String localized_name) {
		this.localized_name = localized_name;
	}
	
}
