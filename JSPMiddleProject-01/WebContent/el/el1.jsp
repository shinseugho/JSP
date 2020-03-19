<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	EL: 화면 출력언어
	request나 session에 실은 값을 출력해야한다. 일반 입력값이나 자바언어는 출력되지않는다.
	사용법: ${출력물 }
		{}안에 일반자바변수가 들어가지않는다. (<%=일반자바변수 %>)
		${param.id } 				= getParameter("id")
		${id}=${requestScope.id} 	= request.getAttibute("id")
		${name}=${sessionScope.name}= session.getAttribute("name","홍길동") 
		단, ${sessionScope.name}에서 session을 생략해서 사용할 경우에는 request가 우선순위가 있기때문에 request.id가 있다면 request.id의 값을 가져온다.
		
	jsp가 view인이유: 자바에서 값을 처리, 저장하고, jsp는 그 값을 불러와(request, session) 출력만 하는 역활을 담당한다.(: MVC구조)	 
 --%>
 <%
 	String name="홍길동";
 	request.setAttribute("name", name);
 %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름: ${name }
</body>
</html>