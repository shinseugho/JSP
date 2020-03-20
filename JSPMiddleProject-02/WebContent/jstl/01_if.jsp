<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
	JSTL
		= core: <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
		  =========> 변수선언 	
		  				<c:set> = request.setAttribute()
		  				
		  						<c:set var="id" value="admin">, ${id }입력시 admin출력
		  						
		  				<c:out value="test"> = out.println(); = ${}
		  				
		  =========> 제어문
		  				<c:if>: else가 존재하지 않는다.
				  				
				  				if(조건문)
				  				{
				  					실행문장
				  				}
				  				=>	<c:if test="조건문">
				  						실행문장
				  					</c:if>	
				  				
				  		<c:forEach>
				  		
				  				for(int i=1; i<=10;i++)
				  				{
				  				}
				  				=> 	<c:forEach var="i" begin="1" end="10" step="1">
				  					</c:forEach>
				  					단점으로는 step값이 증가만 가능하며 감소는 불가능하다.
				  				
				  				for(Movie vo:list)
				  				{
				  				}
				  				=>	<c:forEach var="vo" items="list">
				  					</c:forEach>
				  					
				  		<c:choose>: 다중조건문이나, 선택문일때 사용한다.
				  				
				  				<c:choose>
				  					<c:when test="조건문">실행문장</c:when>	if()
				  					<c:when test="조건문">실행문장</c:when>	else if()
				  					<c:when test="조건문">실행문장</c:when>
				  					<c:when test="조건문">실행문장</c:when>
				  					<c:otherwise></c:otherwise> default	else()
				  				</c:choose>
				  				
				  		JSTL => XML
				  				=== 
				  		열고닫기를 잘못하면 레어가 난다. 
				  		지원속성외의 속성을 사용하면 에러가 난다.
				  		속성값은 반드시 ""을 사용해야한다.
				  		
				  		<c:forTokens var="s" value="red,blue,green" delimt=","> = StringTokenizer()
				  		
		  =========> URL	
		  			<c:redict url="">: 화면이름 = response.sendRedirect();
		  
		= fmt: <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/fmt" %>
		
		= fn: <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/functions" %>
		
		=======
		= sql ===>DAO
		= xml ===>Parser(JAXP,JAXB)
		======= 사용하지 않는다.
 --%>
<%
	int sex=1;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Java로 코딩한 경우</h2>
	<%
		if(sex==1)
		{
	%>
			남자입니다.
	<%		
		}
		else
		{
	%>
			여자입니다.
	<%		
		}
	%>
	<br>
	<h2>JSTL로 코딩한 경우</h2>
	<%-- 변수선언 --%>
	<c:set var="sex" value="2"/>
	<%-- 위와 동일한 코딩이나  이 부분은 java로 처리한 부분이다.
		request.setAttribute("sex", 2);
	--%>	
	<c:if test="${sex==1 }">
	남자입니다.
	</c:if>
	<c:if test="${sex==2 }">
	여자입니다.
	</c:if>
	
</body>
</html>