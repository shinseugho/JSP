<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/* 	request가 메인에 종속되어있기때문에 메인에서 입력을 해야 한글이 깨지지않는다.
	try
	{
		request.setCharacterEncoding("UTF-8");
	}catch(Exception ex){} */
	String ss=request.getParameter("ss");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<h1><%=ss %></h1>
	</div>
</body>
</html>