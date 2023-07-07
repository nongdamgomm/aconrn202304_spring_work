<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>navbar</title>
<style>
	.navbar-expand-lg .navbar-collapse{
		justify-content: center;
	}
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
	  <div class="container-fluid">
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarNavDropdown">
	      <ul class="navbar-nav">
	        <li class="nav-item">
	          <a class="nav-link" href="${pageContext.request.contextPath }">HOME</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="${pageContext.request.contextPath }">ABOUT</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="${pageContext.request.contextPath }/review/list">REVIEW</a>
	        </li>
	        <c:choose>
			<c:when test="${empty sessionScope.id }">
			<li class="nav-item">
	          <a class="nav-link" href="${pageContext.request.contextPath }/users/loginform">LOGIN</a>
	        </li>
			</c:when>
			<c:otherwise>
				<li class="nav-item">
		          <a class="nav-link" href="${pageContext.request.contextPath }/users/info">MY PAGE</a>
		        </li>
				<li class="nav-item">
	          	<a class="nav-link" href="${pageContext.request.contextPath }/users/logout">LOGOUT</a>
	        	</li>
			</c:otherwise>
			</c:choose>
	      </ul>
	    </div>
	  </div>
	</nav>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
</body>
</html>