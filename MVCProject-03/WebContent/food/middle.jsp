<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<c:forEach var="vo" items="${list }">
				 <div class="col-md-4">
				      <div class="thumbnail">
				        <a href="#">
				          <img src="${vo.image }" alt="Lights" style="width:100%">
				          <div class="caption">
				            <p>${vo.title }</p> 
				            <p>${vo.score }</p>
				            <p>${vo.address }</p>
				          </div>
				        </a>
				      </div>
				  </div>    
			</c:forEach>
		</div>
	</div>
</body>
</html>