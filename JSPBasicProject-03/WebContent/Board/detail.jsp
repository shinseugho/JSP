<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.sist.dao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<style type="text/css">

.row{
	margin: 0px auto;
	width: 800px;
}

h2{
	text-align: center;
}
</style>
</head>
<body>
	<div class="container">
		<h2>묻고 답하기</h2>
		<div class="row">
			<table class="table table-striped">
				<tr>
					<th width=10% class="text-center">번호</th>
					<th width=45% class="text-center">제목</th>
					<th width=15% class="text-center">이름</th>
					<th width=20% class="text-center">작성일</th>
					<th width=10% class="text-center">조회수</th>
				</tr>
<%-- 				<%
					for(BoardVO vo:list)
					{
				%>
						<tr>
							<td width=10% class="text-center"><%=vo.getNo() %>번호</td>
							<td width=45% class="text-left"><%=vo.getSubject() %>제목</td>
							<td width=15% class="text-center"><%=vo.getName() %>이름</td>
							<td width=20% class="text-center"><%=vo.getRegdate() %>작성일</td>
							<td width=10% class="text-center"><%=vo.getHit() %>조회수</td>
						</tr>
				<%		
					}
				%> --%>
			</table>
		</div>
	</div>
</body>
</html>