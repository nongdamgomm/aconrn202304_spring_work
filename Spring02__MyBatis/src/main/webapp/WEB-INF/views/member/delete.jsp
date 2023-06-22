<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/delete.jsp</title>
</head>
<body>
	<div class="container">
		<h2>회원 삭제</h2>
		<p>
		<strong>${param.num }</strong>님의 정보를 삭제하였습니다
		<a href="${pageContext.request.contextPath }/member/list.do">목록보기</a></p>
	</div>
</body>
</html>