<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//전체삭제시 이용
	//session.invalidate();
	//일부삭제시 이용(: 장바구니, 찜등에서 사용)
	session.removeAttribute("name");
	response.sendRedirect("diary.jsp");
	/*
		Session: 서버에 일부 데이터저장=> JSP에서 공유할 목적으로 사용
		주요기능
			1. setAttribute(key, Object): 세션 공간에 저장
			2. getAttribute(key): 저장값 불러올때
			3. invalidate(): 저장된 모든 데이터 삭제
			4. removeAttribute(key): 한개씩 삭제
			5. setMaxactiveInterval(): 저장기간 설정	
	*/
%>