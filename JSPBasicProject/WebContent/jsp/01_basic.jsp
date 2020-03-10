<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="a.jsp"%>
<!-- 주석은 2가지로 걸 수 있다. -->
		<%-- JSP주석: 안에서 주석처리를 하려면 //, /* */를 사용한다. --%>
		<!-- HTML주석 -->
		<%-- <% %> 안에는 자바영역이다. --%> 
<%--
	JSP 정의  
		Java Server Page: 서버에서 실행되는 자바파일(= 페이지: 일반사이트는 75페이지 정도 나온다.) 
	 
	JSP 
		1. 실행과정 
			a.jsp=> a_jsp.java=> a_jsp.class=> html실핼
		
		2. 지시자
			가. page지시자: JSP파일에 대한 정보지시자
				<%@ page 속성=값 ... %>
			나. include지시자: JSP안에 다른 JSP를 첨부(: 조립지시자)
				<%@ include file="" %>
			다. tag라이브러리
				<%@ taglib prefix="" uri=""%>
				<c:if>
				<c:forEach>
				<c:choose>
				<c:set>
				<c:out>
				
		3. 자바코딩
			<% %>: 스크립트릿: 일반자바코딩을 입혁하는 구간
			<%! %>: 선언식: 멤버변수, 메소드 생성시 사용하는 구간
			<%= %>: 표현식: 화면 출력시 사용하는 구간(: out.println())
			가. 자바파일=> DB연동, VO(자바빈)
			
		4. 내장객체 
			미리 생성된 객체이다.
			***request: 사용자 요청값, 사용자정보(ip, port)
			***response: 서버에서 응답
			***session: 서버에 사용자 정보나 기타 내용 저장
			application: 서버 정보
			out: 출력 버퍼에 대한 정보(: <%= %>, ${}와 같은 역활이다.)
			***pageContext: JSP와 JSP를 연결(include, forward)
			page: this
			config: 환경설정(web.xml에서 설정)
			exception: 예외처리(: try~catch) 
			
		5. 에러페이지
			가. 한번에 처리
				page 지시자에 존재(errorPage="이동할 파일명")
							
			나. 분류해서 처리
				톰켓이 알고 있어야한다. (web.xml)
		
		6. 액션태그
			<jsp:include>: 지시자는 java(: JSP)만을 합치고, 액션태그는 html, java(: JSP)를  모두 합친다. 
			<jsp:forward>: 스크립트(: 화면변경)를 생성하지않는다.
			<jsp:useBean>: 메모리할당
			<jsp:setProperty>: 요청값을 받아서 처리
			...
		
		7. EL, JSTL
		
		8. MVC 	
--%>

<%-- page지시자: JSP파일에 대한 정보 
		 
	 contentType: 변환코드(: contentType="text/html; charset=UTF-8")
		 default(기본값): contentType="text/html; charset=ISO-8859-1"	
		 설정값:			contentType="text/html; charset=UTF-8"=> response.setContentType("text/html; charset=UTF-8")	      
		 변환형식: html=> text/html
		 		xml=> text/xml

	 import: 라이브러리를 읽어올 경우, 사용자 정의 클래스
	 	default: java.lang, javax.servlet.*
	 	page 지시자의 속성은 한번만 사용하는 것이 원칙이다.
	 	하지만, <%@ page import="java.io.*, java.util.*"%>처럼 여러개 가능하다.
	 	
	 buffer: 출력버퍼(HTML을 출력하는 메모리 공간=> 8kb)+ autoFlush:파일이 바뀔때마다 자동으로 버퍼를 삭제한다.
	 
	 errorPage: error가 있는 경우 지정 파일로 이동
	 		 		 		
--%>		       
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>안녕하세요 JSP</h1>
	<%
		int a=10/0;
	%>
	<%= a %>
</body>
</html>