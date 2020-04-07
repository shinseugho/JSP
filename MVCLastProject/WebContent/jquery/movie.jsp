<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
$(function(){
	$.getJSON('weekly.json',function(data){
		$.each(data["datas"],function(key,value){
			$('#list').append(
					'<div class="col-md-3">'
					+'<div class="thumbnail">'
					+'<img src="'+value.poster+'" alt="Lights" style="width:100%" onclick=detail('+value.no+')>'
					+'<div class="caption">'
					+'<p>'+value.title+'</p>'
					+'</div>'
					+'</div>'
					+'</div>'
			)
		})
	})
});
$(function(){
	$.getJSON('weekly.json',function(data){
		
	})	
});
</script>
</head>
<body>
<div class="container">
	<h1 class="text-center">영화목록</h1>
		<div class="row" id="list"></div>
</div>			
</body>
</html>