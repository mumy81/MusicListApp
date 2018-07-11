package org.devcrew.services;

import java.util.Date;

import org.devcrew.model.Album;

public class AlbumServiceImpl implements AlbumService{
	
	public Album createAlbum(String name, String artist, String date) {
		Album album = new Album(name, artist, date);
		return album;
	}

}
