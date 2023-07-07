<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<h1>Oops!</h1>
		<p class="alert alert-danger">
		  <!-- 
		  		예외 컨트롤러에서 
		  		
		   -->
		   <strong>${exception.message }</strong>
		   <a href="${pageContext.request.contextPath }/">인덱스로 돌아가기 </a>
		</p>
	</div>
</body>
</html>