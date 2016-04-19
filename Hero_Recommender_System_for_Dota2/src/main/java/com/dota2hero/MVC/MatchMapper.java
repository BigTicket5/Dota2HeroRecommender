package com.dota2hero.MVC;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
public class MatchMapper implements RowMapper<MatchData>{
	public MatchData mapRow(ResultSet rs,int rowNum) throws SQLException
	{
		MatchData matchd = new MatchData();
		matchd.setMatchseq(rs.getString("matchid"));
		matchd.setAccountid(rs.getString("accountid"));
		matchd.setHeroid(rs.getInt("heroid"));
		matchd.setKill(rs.getInt("kills"));
		matchd.setDeath(rs.getInt("death"));
		matchd.setAssist(rs.getInt("assist"));
		return matchd;
	}
}
