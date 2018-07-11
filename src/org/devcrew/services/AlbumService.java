package org.devcrew.services;

import java.util.Date;

import org.devcrew.model.Album;

public interface AlbumService {
	
	public Album createAlbum(String name, String artist, String date);
	
}
