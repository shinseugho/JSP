<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign IN/UP</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/shadowbox.css">
<script type="text/javascript" src="js/shadowbox.js"></script>
<script type="text/javascript">

function postfind() 
{
	window.open("postfind.jsp","postfind","width=450, height=480, scrollbars=yes")
}
function idcheck() {
	window.open("idcheck.jsp","idcheck","width=380, height=230, scrollbars=no")
}
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
		<h1 class="text-center">Sign up</h1>
		<div class="row">
			<form name="frm">
			<table class="table table-hover">
				<tr>
					<th width="15%" class="danger text-right">Username</th>
					<td width="85%" >
						<input type="text" name="id" size="15" class="input-sm" readonly>
						<input type="button" value="check" class="btn btn-sm btn-danger" onclick="idcheck()">
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
						<input type="radio" name="sex" value="Man" checked="checked">Man
						<input type="radio" name="sex" value="Woman">Woman
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
						<input type="button" class="btn btn-sm btn-primary" value="Search" onclick="postfind()"> 
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
						<input type="button" value="Sign up" class="btn stn-sm btn-info">
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