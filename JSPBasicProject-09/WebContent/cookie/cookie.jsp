<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
	저장장소: 웹브라우저(: 검색어, 방문사이트, 상세보기 등=> 장바구니)
	
	동작과정
		1. 생성단계: Cookie cookie=new Cookie("key","값")
					Map 형식(key중복되면 안된다.)이며, 문자열만 저장이 가능하다.
		2. 저장단계: response.addCookie(cookie)
		3. Cookie읽기: Cookie[] cook=request.getCookies(); => ArrayList에 저장후 출력
		4. 삭제: setAge(0) 
		     저장기간: setAge(60*60*24)			
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>