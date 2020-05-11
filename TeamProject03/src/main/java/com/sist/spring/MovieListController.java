package com.sist.spring;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieListController {

	@RequestMapping("project/movieList/movielist.do")
	public String movie_list(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../movieList/movielist.jsp");
		return "project/main/main";
	}
	
	@RequestMapping("project/movieList/moviegrid.do")
	public String movie_grid(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../movieList/moviegrid.jsp");
		return "project/main/main";
	}
}
