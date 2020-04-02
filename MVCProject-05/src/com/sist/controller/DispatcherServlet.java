package com.sist.controller;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

public class DispatcherServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private List<String> list=new ArrayList<String>();
	
	public void init(ServletConfig config) throws ServletException {
		//path(web.xml)읽기
		String path=config.getInitParameter("contextConfigLocation");
		String defaultPath=config.getInitParameter("defaultPath");
		HandlerMapping hm=new HandlerMapping(path, defaultPath);
		list=hm.getList();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cmd=request.getRequestURI();
		cmd=cmd.substring(request.getContextPath().length()+1);
		System.out.println(cmd);
		try
		{
			for(String cls:list)
			{
				/*
				 * @controller
				 * class A
				 * 
				 * class B
				 * 
				 * @controller
				 * class C
				 * 
				 * @RequestMapping("main/list.do")
				 * 				    ============ rm.value
				 * 메소드
				 */
				//메모리할당
				Class clsName=Class.forName(cls);
				if(clsName.isAnnotationPresent(Controller.class)==false)
					continue;
				Object obj=clsName.newInstance();
				
				//메소드검색후 호출
				Method[] methods=clsName.getDeclaredMethods();
				for(Method m:methods)
				{
					RequestMapping rm=m.getAnnotation(RequestMapping.class);
					if(rm.value().equals(cmd))
					{
						String jsp=(String)m.invoke(obj, request,response);
						
						if(jsp.startsWith("rediredct"))
						{
							response.sendRedirect(jsp.substring(jsp.indexOf(":")+1));
						}
						
						else
						{
							RequestDispatcher rd=request.getRequestDispatcher(jsp);
							rd.forward(request, response);
						}
						
						return;
					}
				}
			}
		}catch(Exception ex){}
	}

}
