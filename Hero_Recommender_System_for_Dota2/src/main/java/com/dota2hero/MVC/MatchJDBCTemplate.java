package com.dota2hero.MVC;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

public class MatchJDBCTemplate implements MatchDAO{
	
	private DataSource datasource;
	private JdbcTemplate jdbctemplateobject;
	@Override
	public void setDataSource(DataSource ds) {
		// TODO Auto-generated method stub
		this.datasource = ds;
		this.jdbctemplateobject = new JdbcTemplate(ds);
	}

	@Override
	public int getMatchCount(String playerid){
		// TODO Auto-generated method stub
		String SQL="select count(*) from match_profile where accountid=?";
		return jdbctemplateobject.queryForObject(SQL, new Object[]{playerid},Integer.class);
	}
	@Override
	public List<Integer> FiveHero(String playerid) {
		// TODO Auto-generated method stub
		String SQL = "select max(matchseq) from match_profile";
		//List <MatchDetail> mds = jdbctemplateobject.query(SQL, new MatchMapper());
		List<Integer> smallid = jdbctemplateobject.queryForList(SQL, Integer.class);
		return smallid;
	}

}