<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	try
	{
		request.setCharacterEncoding("UTF-8");
	}catch(Exception ex){}

	String mode=request.getParameter("mode");
	if(mode==null)
	{
		mode="0";
	}
	int no=Integer.parseInt(mode);
	String jsp="../detail/search.jsp";  
	
	switch(no)
	{
		//메인
		case 0: 
			jsp="../detail/00_search.jsp";
			break;
		//여행준비
		case 1: 
			jsp="../detail/01_ready.jsp";
			break;
		//가이드북
		case 2: 
			jsp="../detail/02_guidebook.jsp";
			break;
		//항공	
		case 3: 
			jsp="../detail/03_airline.jsp";
			break;
		//숙소	
		case 4:
			jsp="../detail/04_staying.jsp";
			break;
		//여행지
		case 5:
			jsp="../detail/05_destination.jsp";	
			break;
		//항공	
		case 6: 
			jsp="../detail/06_airline.jsp";
			break;
		//숙소	
		case 7:
			jsp="../detail/07_staying.jsp";
			break;
		//여행지
		case 8:
			jsp="../detail/08_destination.jsp";	
			break;	
		//공지사항	
		case 9:
			jsp="../detail/09_notice.jsp";	
			break;
		//자유게시판	
		case 10:
			jsp="../detail/10_free.jsp";	
			break;
		//후기	
		case 11:
			jsp="../detail/11_comment.jsp";	
			break;
		//q&a	
		case 12:
			jsp="../detail/12_q&a.jsp";	
			break;
		//고객센터	
		case 13:
			jsp="../detail/13_csc.jsp";	
			break;
		//회원가입
		case 14:
			jsp="../detail/00_signup.jsp";	
			break;
		//로그인
		case 15:
			jsp="../detail/00_signin.jsp";	
			break;
	}
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>SIST G강의실 여행복행</title>

    <!-- Favicon -->
    <link rel="icon" href="../css/img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link href="../css/style.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="../css/css/responsive/responsive.css" rel="stylesheet">
    
</head>
<body>
  
  	<!-- header -->
	<%@ include file="./main_01_header.jsp" %>
	
	<!-- content -->
	<div>
		<jsp:include page="<%=jsp %>"></jsp:include>
	</div>
	<!-- footer -->
  	<%@ include file="./main_03_footer.jsp" %>
  	
    <!-- jQuery-2.2.4 js -->
    <script src="../css/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="../css/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap-4 js -->
    <script src="../css/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="../css/js/others/plugins.js"></script>
    <!-- Active JS -->
    <script src="../css/js/active.js"></script>
</body>
</html>  