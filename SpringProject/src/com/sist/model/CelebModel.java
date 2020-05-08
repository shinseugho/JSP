package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller
public class CelebModel {

	@RequestMapping("celeb/celebgrid.do")
	public String celeb_celebGrid(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../celeb/celebgrid.jsp");
		return "../main/main.jsp";
	}
	
	@RequestMapping("celeb/celeblist.do")
	public String celeb_celebList(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../celeb/celeblist.jsp");
		return "../main/main.jsp";
	}
	
	@RequestMapping("celeb/celebdetail.do")
	public String celeb_celebDetail(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../celeb/celebdetail.jsp");
		return "../main/main.jsp";
	}
}
