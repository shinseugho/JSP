<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.row{
	margin: 0px auto;
	width: 430px;
}
td{
	font-size: 8px;
}
</style>
</head>
<body>
	<div class="container">
		<h3 class="text-center">postnumber search</h3>
		<div class="row">
			<table class="table">
				<tr>
					<td>
						입력:<input type="text" name="dong" size="15" class="input-sm">
							<input type="button" value="검색" class="btn btn-sm btn-primary">
					</td>
				</tr>
				<tr>
					<td class="text-right">
					<sub><font color="red">※동/읍/면을 입력하세요</font></sub>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>