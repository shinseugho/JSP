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
import com.sist.temp.Controller;

import javax.xml.parsers.*;
import org.w3c.dom.*;

/*
 * @=> Type: 클래스 구분 => @Controller, @Repository, @Component, @Service	
 *                      ============ ============ =========== =========
 *                      	Model		 DAO		일반클래스	   Manager					
 * public class A
 * {
 * 		@=>FIELD: 메모리주소전송 => @Autowired
 * 							   ===========
 * 							      자동 메모리 할당
 * 		private B b;
 * 
 * 		public void setB(@=>PARAMETER=>@Resource B b)
 * 									   =========
 * 										
 * 		{
 * 			this.b=b;
 * 		}
 * 
 * 		@=>CONSTRUCTOR
 * 		public A()
 * 		{
 * 
 * 		}
 * 		
 * 		@=>METHOD
 * 		public void display()
 * 		{
 * 			
 * 		}
 * 	
 * 		public class A
 * 		{
 * 			public void aaa(String a, int b) {}
 * 			public void bbb(String a) {}
 * 			public void ccc(String a, double d) {}
 * 		}
 * 		==> a=> aaa, b=> bbb, c=> ccc
 * 		A aa=new A();
 * 		if(input=='a') aa.aaa("",10);
 * 		else if(input=='b') aa.bbb("");
 * 		else if(input=='c') aa.ccc("",10.5);
 * }
 */

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
				
				//어노테이션(con.sist.temp)에 있는 controller를 읽어옴(: 찾기기능)
				//Controller con=(Controller)clsName.getAnnotation(Controller.class);
				//어노테이션이 있는지 확인하는 코딩부분
				if(clsName.isAnnotationPresent(Controller.class)==false)
					continue;
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
