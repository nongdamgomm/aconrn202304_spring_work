<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.fotorama__nav--dots .fotorama__nav__frame{
		display:none;
	}
</style>
<link href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet">
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/navbar.jsp">
		<jsp:param value="home" name="current"/>
	</jsp:include>
	<div class="fotorama" data-loop="true">
	  <img src="https://essential-skin.netlify.app/images/imgslide1.png">
	  <img src="https://essential-skin.netlify.app/images/imgslide2.png">
	  <img src="https://essential-skin.netlify.app/images/imgslide1.png">
	  <img src="https://essential-skin.netlify.app/images/imgslide2.png">
	</div>

	<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
</body>
</html>