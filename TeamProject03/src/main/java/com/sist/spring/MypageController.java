package com.sist.spring;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {

	@RequestMapping("project/mypage/userFavoriteGrid")
	public String mypage_userFavoriteGrid(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../mypage/userFavoriteGrid.jsp");
		
		return "project/main/main";
	}
	
	@RequestMapping("project/mypage/userFavoriteList")
	public String mypage_userFavoriteList(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../mypage/userFavoriteList.jsp");
		
		return "project/main/main";
	}
	
	
	@RequestMapping("project/mypage/userProfile")
	public String mypage_userProfile(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../mypage/userProfile.jsp");
		
		return "project/main/main";
	}
	
	
	@RequestMapping("project/mypage/userRate")
	public String mypage_userRate(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../mypage/userRate.jsp");
		
		return "project/main/main";
	}
}
