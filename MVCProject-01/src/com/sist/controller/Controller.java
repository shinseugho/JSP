package com.sist.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sist.model.*;

@WebServlet("*.do")
public class Controller extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	public void init(ServletConfig config) throws ServletException {

	}

	//controller?cmd=list
	//controller?cmd=detail
	//controller?cmd=insert
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//String cmd=request.getParameter("cmd");
		//uri=/MVCProject-01/list.do
		String uri=request.getRequestURI();
		//getContextPath = MVCProject-01
		//String cmd=uri.substring(request.getContextPath().length()+1,uri.lastIndexOf("."));
		String cmd=uri.substring(uri.lastIndexOf("/")+1,uri.lastIndexOf("."));
		System.out.println(cmd);
		//요청 받기=> 처리 => Model
		//String jsp="";
		String jsp=uri.substring(request.getContextPath().length(),uri.lastIndexOf("."));
		System.out.println(jsp);
		jsp=jsp+".jsp";
		System.out.println(jsp);
		//
		//map.put("list", new ListModel());
		//map.put("detail", new DetailModel());
		//map.put("insert", new InsertModel());
		//map.put("update", new UpdateModel());
		
		if(cmd.equals("list"))
		{
			ListModel model=new ListModel();
			model.execute(request);
			//jsp="list.jsp";
			//jsp="memeber/list.jsp";
		}
		else if(cmd.equals("detail"))
		{
			DetailModel model=new DetailModel();
			model.execute(request);
			//jsp="detail.jsp";
			//jsp="memeber/detail.jsp";
		}
		else if(cmd.equals("insert"))
		{
			InsertModel model=new InsertModel();
			model.execute(request);
			//jsp="insert.jsp";
			//jsp="memeber/insert.jsp";
		}
		else if(cmd.equals("update"))
		{
			UpdateModel model=new UpdateModel();
			model.execute(request);
			//jsp="board/update.jsp";
		}
		
		//RequestDispatcher rd=request.getRequestDispatcher("member/"+jsp);
		RequestDispatcher rd=request.getRequestDispatcher(jsp);
		rd.forward(request, response);
		
	}

}
