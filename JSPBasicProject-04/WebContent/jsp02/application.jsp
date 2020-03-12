<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	application 객체 =====> ServletContext
	=> Servlet(: serve(: 서버)r+let(: 가벼운프로그램))
	
	java SE: Appliacation
	java EE: 기업용 web환경
	java ME: 모바일
	
	Servlet(연결용으로 사용)
	JSP(화면 UI)
	
	브라우저에서 사용자가 데이터를 전송하면 받을 수 있는 파일은 Servlet, JSP뿐이다.
	
	MVC구조: 데이터=>servlet=>java=>jsp=> 유지보수 및 재사용을 위해 MVC구조를 이용한다.
	
	application: 서버와 관련
		1) 서버정보
			=getServarInfo(): 3.1Version
			=버전정보: getMajorVesion(): 3, getMinorVersion(): 1
		2) 자원정보
			=getRealPath()
		3) web.xml을 읽어서 처리(log파일)
			=getInitParameter()
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	서버이름:<%=application.getServerInfo() %><br>
	버전:<%=application.getMajorVersion() %><br>
		<%=application.getMinorVersion() %>
	<%
		String driver=application.getInitParameter("driver");
		String url=application.getInitParameter("url");
		String name=application.getInitParameter("username");
		String pwd=application.getInitParameter("password");
		
		application.log("Driver:"+driver);
		application.log("URL:"+url);
		application.log("Username:"+name);
		application.log("Password:"+pwd);
	%>	
</body>
</html>