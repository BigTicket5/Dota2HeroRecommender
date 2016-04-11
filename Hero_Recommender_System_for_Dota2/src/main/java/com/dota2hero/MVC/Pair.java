package com.dota2hero.MVC;

public class Pair<K, V> {
	private final K num1;
	private final V num2;
	public Pair(K num1, V num2) {
		this.num1 = num1;
		this.num2 = num2;
	}
	public K getNum1() {
		return this.num1;
	}
	public V getNum2() {
		return this.num2;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((num1 == null) ? 0 : num1.hashCode());
		result = prime * result + ((num2 == null) ? 0 : num2.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		Pair<?, ?> other = (Pair<?, ?>)obj;
		if(!this.num1.equals(other.num1))
			return false;
		if(!this.num2.equals(other.num2))
			return false;
		return true;
	}
}
