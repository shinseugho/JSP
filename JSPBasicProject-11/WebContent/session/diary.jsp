<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%--
	session: 서버에서 사용자의 일부정보를 저장=> HttpSession(: 각 클라이언트에 1개씩 배정)=> request를 이용해서 session을 가져올 수 있다.
	관련메소드
		1. 저장
			setAttribute(key, 값)
			※cookie와 차이점: 값에 setAttribute는 Object가 들어 갈 수 있고, cookie는 String만 들어갈 수 있다.(: 리턴형이 달라 질 수 있다.)
		
		2. 저장된 값 읽기
			Object getAttribute("key"): 반드시 형변환해야한다.(제네릭스가 존재하지않는다.)
		
		3. 기간 설정
			default: 1,800초(30분)
			setMaxactiveInterval(시간(초단위))		
			
		4. 저장된 내용 삭제
			가. 일부삭제: 장바구니
				removeAttribute("key")
			나. 전체삭제: 로그인정보가 로그아웃시 삭제
				invalidate()
	cookie와 session은 모두 임시저장을 하는 기능이며, 다만 위치저장을 내 클라이언트(cookie)에 하는지, 서버(session)에 하는 지에 따라 다르다.			
	
	JSP Java Class 출력
	MVC Controller(sevlet) Model JSP(view)
--%> 
<%
	Date date=new Date();
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-M-d");
	String today=sdf.format(date);
	
	StringTokenizer st=new StringTokenizer(today,"-");
	
	String strYear=st.nextToken();
	String strMonth=st.nextToken();
	String strDay=st.nextToken();
	
	String sy=request.getParameter("year");
	if(sy==null) sy=strYear;
	String sm=request.getParameter("month");
	if(sm==null) sm=strMonth; 
	
	int year=Integer.parseInt(sy);
	int month=Integer.parseInt(sm);
	int day=Integer.parseInt(strDay);
	
	// 1일자의 요일
	// 1년도 1월 1일 ~ 2019년 12월 31일 총일수
	int total=(year-1)*365
			 +(year-1)/4
			 -(year-1)/100
			 +(year-1)/400;
	//2020년 2월 29일(: 전달까지의 일수)
	int[] lastDay={31,28,31,30,31,30,31,31,30,31,30,31};
	if((year%4==0 && year%100!=0) || (year%400==0)) 
		lastDay[1]=29;
	else
		lastDay[1]=28;
	
	for(int i=0;i<month-1;i++)
	{
		total+=lastDay[i];
	}
	
	total++;
	
	int week=total%7;//1일차의 요일구하기 완료
	
	String[] strWeek={"일","월","화","수","목","금","토"};
%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
.row{
	margin: 0px auto;
	width: 900px;
}
</style>
<script type="text/javascript">
function change() {
	var f=document.frm;
	f.submit();
}
</script>
</head>
<body>
	<div class="container">
		<h1 class="text-center"><%=session.getAttribute("name")%>(<%=session.getAttribute("id") %>)&nbsp;<%=sy %>년 <%=sm %>월 일정표</h1>
			<div class="row">
			<form method="post" name="frm" action="diary.jsp">
			<table class="table">
				<tr>
					<td class="text-left">
						<select name="year" onchange="change()">
							<%
								for(int i=2020;i<=2030;i++)
								{
							%>
									<option <%=i==year?"selected":"" %>><%=i %></option>
							<%		
								}
							%>						
						</select>년도 &nbsp;
						<select name="month" onchange="change()">
							<%
								for(int i=1;i<=12;i++)
								{
							%>
									<option <%=i==month?"selected":"" %>><%=i %></option>
							<%		
								}
							%>
						</select>월
					</td>
				</tr>
			</table>
			</form>
			<table class="table table-bordered">
				<tr class="danger" height="35px">
					<%
						String color="";
						int k=0;
						for(String s:strWeek)
						{
							if(k==0)
								color="red";
							else if(k==6)
								color="blue";
							else
								color="black";	
					%>
							<th class="text-center"><h1><font color="<%=color %>"><%=s %></font></h1></th>
					<%
							k++;
						}
					%>
				</tr>
				<%
					color="black";
					for(int i=1;i<=lastDay[month-1];i++)
					{
						if(week==0)
							color="red";
						else if(week==6)
							color="blue";
						else
							color="black";
						
						if(i==1)
						{
				%>
							<tr>
							<%
								for(int j=0;j<week;j++)
								{
							%>
									<td height="150px" class="text-left" valign="top">&nbsp;</td>
							<%		
								}
							%>
				<%			
						}
					
						String back="white";
						if(i==day) 
							back="success";
				%>
						<td height="150px" class="text-left <%=back %>" valign="top"><h3><font color="<%=color %>">
						<a href="diary_insert.jsp">
						<%=i %></font></h3></td>
				<%		
						week++;
						if(week>6)
						{
							week=0;
				%>
							</tr>
							<tr>
				<%			
						}
					}
				%>
				</tr>		
			</table>
			</div>
	</div>
</body>
</html>