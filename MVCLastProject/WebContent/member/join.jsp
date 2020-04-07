<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="../shadow/css/shadowbox.css">
<script type="text/javascript" src="../shadow/js/shadowbox.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<style type="text/css">
.row{
	margin: 0px auto;
	width:1000px;
}

input, select{
	display: inline-block;
}

.table, td{
	background-color: white; 
}
</style>
<script type="text/javascript">
Shadowbox.init({
	players:['iframe']
});
//jquery시작=> window.onload -> main()
//$(document).ready(function(){})
// ================생략가능
//var id=document.getElementById('id')=> lib => $('#id')
/*  
	Javascript/jauery=> 태그관리프로그램
 	selector
 	========
 		1) 태그				$('태그명')
 		2) ID				$('#ID')
 		3) CLASS			$('.CLASS명')
 		4) 가상(자신,내장객체)	$(this), $(window), $(document)
 */
//<input type=text id=id size=10>
$(function(){
	/*
		태그로 제어: css제어, 이벤트제어
	*/
	$('#postBtn').click(function(){
		 Shadowbox.open({
			 content:'../member/postfind.do',
			 title:'우편번호 검색',
			 player:'iframe',
			 width:530,
			 height:400
		 })
	})
})
</script>
<style type="text/css">
.row{
	margin: 0px auto;
	width: 700px;
}
</style>
</head>
<%--
	ID       NOT NULL VARCHAR2(20)  
	PWD      NOT NULL VARCHAR2(10)  
	NAME     NOT NULL VARCHAR2(34)  
	EMAIL             VARCHAR2(100) 
	SEX               VARCHAR2(10)  
	BIRTHDAY NOT NULL VARCHAR2(20)  
	POST     NOT NULL VARCHAR2(7)   
	ADDR1    NOT NULL VARCHAR2(200) 
	ADDR2             VARCHAR2(200) 
	TEL               VARCHAR2(20)  
	CONTENT  NOT NULL CLOB          
	REGDATE           DATE          
	ADMIN             CHAR(1)   
--%>
<body>
	<div class="container">
		<h1 class="text-center">회원가입</h1>
		<div class="row">
			<form name="frm" action="join_ok.jsp" method="post">
			<table class="table table-hover">
				<tr>
					<th width="15%" class="danger text-right">Username</th>
					<td width="85%" >
						<input type="text" name="id" size="15" class="input-sm" readonly>
						<input type="button" value="check" class="btn btn-sm btn-danger">
					</td>
				</tr>
				<tr>
					<th width="15%" class="danger text-right">Password</th>
					<td width="85%" >
						<input type="password" name="pwd" size="15" class="input-sm">&nbsp;
						re-input:&nbsp;<input type="password" name="pwd1" size="15" class="input-sm">
					</td>
				</tr>
				<tr>
					<th width="15%" class="danger text-right">Name</th>
					<td width="85%" >
						<input type="text" name="name" size="15" class="input-sm">
					</td>
				</tr>
				<tr>
					<th width="15%" class="danger text-right">Email</th>
					<td width="85%" >
						<input type="text" name="email" size="50" class="input-sm">
					</td>
				</tr>
				<tr>
					<th width="15%" class="danger text-right">Gender</th>
					<td width="85%" >
						<input type="radio" name="sex" value="남자" checked="checked">Man
						<input type="radio" name="sex" value="여자">Woman
					</td>
				</tr>
				<tr>
					<th width="15%" class="danger text-right">Birthday</th>
					<td width="85%" >
						<input type="date" name="birthday" size="50" class="input-sm">
					</td>
				</tr>
				<tr>
					<th width="15%" class="danger text-right">Post</th>
					<td width="85%" >
						<input type="text" name="post1" size="5" class="input-sm" readonly> -
						<input type="text" name="post2" size="5" class="input-sm" readonly>
						<input type="button" class="btn btn-sm btn-primary" value="Search" id="postBtn"> 
					</td>
				</tr>
				<tr>
					<th width="15%" class="danger text-right">Address</th>
					<td width="85%" >
						<input type="text" name="addr1" size="50" class="input-sm" readonly>
					</td>
				</tr>
				<tr>
					<th width="15%" class="danger text-right">Detail Address</th>
					<td width="85%" >
						<input type="text" name="addr2" size="50" class="input-sm">
					</td>
				</tr>
				<tr>
					<th width="15%" class="danger text-right">Tel</th>
					<td width="85%" >
						<select class="input-sm" name="tel1">
							<option>010</option>
							<option>011</option>
							<option>017</option>
						</select>
						<input type="text" name="tel2" size="5" class="input-sm"> - 
						<input type="text" name="tel3" size="5" class="input-sm">
					</td>
				</tr>
				<tr>
					<th width="15%" class="danger text-right">Content</th>
					<td width="85%" >
						<textarea rows="8" cols="60" name="content"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2" class="text-center">
						<input type="button" value="Sign up" class="btn stn-sm btn-info"
								onclick="join()"
						>
						<input type="button" value="Cancel" class="btn stn-sm btn-success"
							   onclick="javascript:history.back()"
						>
					</td>
				</tr>
			</table>
			</form>
		</div>
	</div>		
</body>
</html>