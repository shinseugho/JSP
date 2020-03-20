<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%
	String[] subjects={"Java", "Oracle", "Jsp", "Spring", "Kotlin"}; 
	request.setAttribute("subjects", subjects);
%>

<%-- request.setAttribute("subjects", subjects);대신에 <c:set var="subjects" value="<%=subjects %>"/>도 가능하다.  --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Java코딩</h2>
	<ul>
		<%
			int i=1;
			for(String sub:subjects)
			{
		%>
				<li><%=i%>.&nbsp;<%=sub %></li> 
		<%		
				i++;
			}
		%>
	</ul>	
	
	<h2>JSTL코딩</h2>
	<ul>
		<%--  <c:forEach var="sub" items="subjects" >으로 하면 subjects가 일반변수이기때문에 subjects만 출력이 된다. --%>
		<c:forEach var="sub" items="${subjects }" varStatus="s">
			<li>${s.index+1 }.&nbsp;${sub }</li>
		</c:forEach>
	</ul>
</body>
</html>