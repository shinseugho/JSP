<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.dao.*"%>
<<jsp:useBean id="dao" class="com.sist.dao.DiaryDAO"></jsp:useBean>
<%
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	
	//연결
	String res=dao.isLogin(id, pwd);
	//이동
	if(res.equals("NOID"))
	{
%>
		<script>
			alert("아이디가 없습니다.");
			history.back();
		</script>
<%		
	}
	else if(res.equals("NOPWD"))
	{
%>
		<script>
			alert("비밀번호가 틀립니다\n확인후 다시 입력하세요.");
			history.back();
		</script>
<%			
	}
	else
	{
		session.setAttribute("id", id);
		session.setAttribute("name", res);
		response.sendRedirect("diary.jsp");
	}
%>