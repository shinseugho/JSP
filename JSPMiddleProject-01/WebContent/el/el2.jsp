<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
	${연산자 }
	1. 산술연산자: +, -, *, /(|div), %(|mod)
		단, <%=10/3 %>과 ${(10/3) }의 결과값이 다르다.(: <%%>는 정수값, ${}은 실수값)
		+는 순수하게 산술연산만 가능하다. 문자열 결합시 +=을 사용해야한다.
	2. 비교연산자: ==(|eq), !=(|ne), <(|lt), >(|gt), <=(|le), >=(|ge)
	3. 논리연산자: &&(|and) ||(|or) !(|not)
	4. empty연산자
		 String id;: null값
		 String id="";: empty값
		 ${empty id }	
	5. 삼항연산자: ${조건1?값1:값2}
	6. 문자열결합: +=	  
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%="Hello" %><br>
	${"Hello" }
	${requestScope.id=='admin' }
	${requestScope.id eq 'admin' }
	
</body>
</html>