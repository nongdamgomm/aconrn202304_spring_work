<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<div class="container">
		<h1>공지사항</h1>
		<ul>
			<c:forEach var="tmp" items="${requestScope.list }">
				 <li>${tmp }</li>
			</c:forEach>
			
		</ul>
		<a href="person/today">1</a>
	</div>
</body>
</html>
