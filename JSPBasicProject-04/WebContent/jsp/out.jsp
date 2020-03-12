<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="16kb"%>
<%-- 
	기본객체(내장객체)
	***1. request: *** 사용자 요청정보, 사용자 정보=> session 생성, cookie 생성
	***2. response: 응답정보, header정보, ***이동정보(페이지, sendRedirect())
						==========
						  파일다운로드(파일명, 파일크기를 서버에 먼저 전송=> 파일전송)
				=> 데이터전송(header, data)
		HttpServletResponse		
	3. out객체=> HTML을 출력하는 메모리(출력버퍼)
		=> JspWritter
			JSP실행과정 			
					a.jsp		                      자바로변경(서블릿) a_jsp.java(한번수행)
		      사용자 요청 =====> 톰켓이 파일을 가지고 온다 ================================> 컴파일 =====> a_jsp.class =====> 실행 ======> 출력버퍼를 HTML을 출력
		      								 변경사항 존재
		가. 메모리에 출력(관리자가 주로 사용)=> print(),println(),getBufferSize()=> 8kb, getRemaining()=> 남아있는 버퍼크기       
	4. application: 서버정보, 버전, ***로그파일관리, web.xml을 제어
	***5. session:보류(매우중요=>별도로 공부)
	6. pageContext: JSP관리 =====> include(), forward()
	7. config =====> web.xml
	8. page =====> this
	9. exception =====>try~catch									 
	
	※ cookie는 내장객체가 아니다.
	
	out객체: 메모리(풀력버퍼)관리
			= 메모리에 출력(HTML, XML) => out.println(), out.print(), <%= %>
			= 메모리 크기확인: getBufferSze()	=====> default:8kb
			= 남아있는 메모리 확인: getRemaining()
			= 버퍼 지우기: flush(), clear() =====> JSP(autoFlush())
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	현재 메모리크기:<%=out.getBufferSize() %><br>
	남아있는 메모리크기:<%=out.getRemaining() %><br>
	현재사용중인 메모리크기:<%= out.getBufferSize()-out.getRemaining() %><br>
	<br>
	현재 메모리크기:<% out.println(out.getBufferSize()); %><br>
	남아있는 메모리크기:<% out.println(out.getRemaining()); %><br>
	현재사용중인 메모리크기:<% out.println(out.getBufferSize()-out.getRemaining()); %><br>
	
</body>
</html>