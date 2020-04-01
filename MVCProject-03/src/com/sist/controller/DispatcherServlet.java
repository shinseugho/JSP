package com.sist.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import com.sist.model.*;
import javax.xml.parsers.*;
import org.w3c.dom.*;

public class DispatcherServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private Map clsMap=new HashMap(); 
	
	public void init(ServletConfig config) throws ServletException {
		String path=config.getInitParameter("contextConfigLocation");
		System.out.println(path);
		try
		{
			DocumentBuilderFactory dbf=DocumentBuilderFactory.newInstance();
			DocumentBuilder db=dbf.newDocumentBuilder();
			Document doc=db.parse(new File(path));
			Element beans=doc.getDocumentElement();
			System.out.println(beans.getTagName());
			NodeList list=beans.getElementsByTagName("bean");
			
			for(int i=0;i<list.getLength();i++)
			{
				Element bean=(Element)list.item(i);
				System.out.println(bean.getTagName());
				String id=bean.getAttribute("id");
				String cls=bean.getAttribute("class");
				
				Class clsName=Class.forName(cls);
				Object obj=clsName.newInstance();
				System.out.println("id= "+id);
				System.out.println("model= "+obj);
				clsMap.put(id, obj);
			}
			
		}catch(Exception ex) {}
	}
	
	//URL: http://localhost/MVCProject-03/detail.do
	//URI: /MVCProject-03/detail.do
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//사용자 요청
		String cmd=request.getRequestURI();
		cmd=cmd.substring(request.getContextPath().length()+1,cmd.lastIndexOf("."));
		
		//사용자 요청 처리 => model 찾기
		Model model=(Model)clsMap.get(cmd);
		
		//요청처리
		String jsp=model.handlerRequest(request);
		
		/*
		 * return "파일명" 		=> forward
		 * return "redirect:" 	=> 화면만 전환
		 */
		//화면이동. Request전송
		if(jsp.startsWith("redirect"))
		{
			response.sendRedirect(jsp.substring(jsp.indexOf(":")+1));
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher(jsp);
			rd.forward(request, response);			
		}
		
	}

}
