package org.devcrew.model;

import java.util.Date;
import java.util.List;

public class Album {
	
	private String name;
	private String artist;
	private String date;
	
	public Album() {}
	
	

	public Album(String name, String artist, String date) {
		super();
		this.name = name;
		this.artist = artist;
		this.date = date;
	}



	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getArtist() {
		return artist;
	}

	public void setArtist(String artist) {
		this.artist = artist;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	

}
