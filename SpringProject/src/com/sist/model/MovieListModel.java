package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller
public class MovieListModel {

	@RequestMapping("searchList/movielist.do")
	public String searchList_movielist(HttpServletRequest request, HttpServletResponse response)
	{
		
		request.setAttribute("main_jsp", "../searchList/movielist.jsp");
		
		return "../main/main.jsp";
	}
	
	@RequestMapping("searchList/moviegrid.do")
	public String searchList_moviegrid(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../searchList/moviegrid.jsp");
		return "../main/main.jsp";
	}
	
	
	
}
