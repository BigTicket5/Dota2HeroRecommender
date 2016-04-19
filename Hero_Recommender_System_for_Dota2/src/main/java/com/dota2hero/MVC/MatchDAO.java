package com.dota2hero.MVC;
import java.util.List;
import javax.sql.DataSource;
public interface MatchDAO {
	//initialize database resources  ie.connection
	public void setDataSource(DataSource ds);
	//return the number of records that belong to player
	public int getMatchCount(String playerid);
	//return the five most well-play heros used by player
	public List<Integer> FiveHero(String playerid);
	
}
