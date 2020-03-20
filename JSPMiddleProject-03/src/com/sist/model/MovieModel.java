package com.sist.model;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.sist.dao.MovieBean;
import com.sist.dao.MovieDAO;

public class MovieModel {

	public void movieListData(HttpServletRequest request)
	{
		String page=request.getParameter("page");
		if(page==null) page="1";
		int curpage=Integer.parseInt(page);
		MovieDAO dao=new MovieDAO();
		List<MovieBean> list=dao.movieListData(curpage);
		int totalpage=dao.movieTotalPage();
		
		HttpSession session=request.getSession();
		
		session.setAttribute("list", list);
		session.setAttribute("curpage", curpage);
		session.setAttribute("totalpage", totalpage);
		
	}
	
	public void movieDetailData(HttpServletRequest request)
	{
		String mno=request.getParameter("mno");
		MovieDAO dao=new MovieDAO();
		MovieBean vo=dao.movieDetailData(Integer.parseInt(mno));
		
		request.setAttribute("vo", vo);
	}
}
