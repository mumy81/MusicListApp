package org.devcrew.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.devcrew.model.Album;
import org.devcrew.services.AlbumServiceImpl;

/**
 * Servlet implementation class AlbumCreateController
 */
@WebServlet("/do_create_album")
public class AlbumCreateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AlbumCreateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		
		String name = request.getParameter("name");
		String artist = request.getParameter("artist");
		String date = request.getParameter("date");
		
		HttpSession session = request.getSession(true);
		List<Album> albumList = (ArrayList<Album>)session.getAttribute("albumList");
		if(albumList == null ) {
			albumList= new ArrayList<Album>();
		}
				
		AlbumServiceImpl albumService = new AlbumServiceImpl();
		Album album = albumService.createAlbum(name, artist, date);
		albumList.add(album);
		session.setAttribute("albumList", albumList);
		
		System.out.println(albumList);
		
		
		request.setAttribute("album", album);
		// response.sendRedirect(arg0);
		request.getServletContext().getRequestDispatcher("/view/albumcreated.jsp").forward(request, response);
		
	}

}
