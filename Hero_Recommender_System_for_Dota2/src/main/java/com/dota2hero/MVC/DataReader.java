package com.dota2hero.MVC;
import java.io.FileReader;
import java.io.IOException;
import java.util.*;

import com.opencsv.CSVReader;
public class DataReader extends DataBase {
	List<Contribution> contributions2 = new ArrayList<Contribution>();
	public DataReader(String filename) {
		super();
		loadData(filename);
	}

	private void loadData(String filename) {
		// TODO Auto-generated method stub
		loadPlayersAndHeros(filename);
		loadContributionsWithZeroContribution();
			
//			int i = 0;
//			for(Contribution c : contributions) {
////				if(i < 5000) {
//					System.out.println(c.toString());
////					i++;
////				}
//			}
	}
	public void loadPlayersAndHeros(String filename) {
		try {
		String csvFilename = filename;
		CSVReader csvReader = new CSVReader(new FileReader(csvFilename));
		String[] row = null;
		boolean flag = false;
		while((row = csvReader.readNext()) != null) {
			if(!flag) {
				flag = true;
				continue;
			}	
//			System.out.println(row[0] + " # " + row[1] + " #  " + row[2]);
			Player p = new Player(row[0]);
			if(!players.contains(p))
				players.add(p);
			Hero h = new Hero(row[1]);
			if(!heros.contains(h))
				heros.add(h);
			double tmp = Double.parseDouble(row[2]);
			Contribution c = new Contribution(row[0], row[1], tmp);
			Contribution c2 = new Contribution(row[0], row[1]);
			if(!contributions.contains(c)) {
				contributions.add(c);
				contributions2.add(c2);
			}
		}
		csvReader.close();
		}
		catch(IOException e) {
			e.printStackTrace();
		}
	}
	public void loadContributionsWithZeroContribution() {
		for(Player p : players) {
			for(Hero h : heros) {
				Contribution c = new Contribution(p.getPlayerId(), h.getId());
				if(!contributions2.contains(c))
					contributions.add(new Contribution(p.getPlayerId(), h.getId(), 0.0));
			}
		}
	}
}
