<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/users/login.jsp</title>
<style>
	*{
	  box-sizing: border-box;
	}
	.bi-check-circle{
		color: #dbcfc1;
	}
	.button{
		width: 100px;
		height: 50px;
		border: none;
		border-radius: 5px;
		background-color: #dbcfc1;
		cursor: pointer;
	}
	.button:hover{
		background-color: #ede8e1;
	}
	.button > a{
		text-decoration: none;
		color: #fff;
	}
	.container {
	  border-radius: 5px;
	  background-color: #f2f2f2;
	  padding: 20px;
	  text-align: center;
	}
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
</head>
<body>
<jsp:include page="/WEB-INF/views/include/navbar.jsp">
		<jsp:param value="login" name="current"/>
</jsp:include>
	<div class="container">
        <svg xmlns="http://www.w3.org/2000/svg" width="70" height="90" fill="currentColor" class="bi bi-check-circle" viewBox="0 0 16 16">
            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
            <path d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z"/>
          </svg>
	
		<p>
			<strong>${param.id }</strong> 회원님 안녕하세요.
		</p>
		<button type="button" class="button">
			<a href="${pageContext.request.contextPath}">메인으로</a>
		</button>
	</div>	
</body>
</html>