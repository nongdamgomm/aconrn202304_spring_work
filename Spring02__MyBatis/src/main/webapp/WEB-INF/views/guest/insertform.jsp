<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Guest/Insertform.jsp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container row g-3 align-items-center">
			<h1>방명록 작성</h1>
		<form action="${pageContext.request.contextPath }/guest/insert.do" method="post">
		
			<div class="">
				<label class="form-label" for="writer">작성자</label>
			<input class="form-control" type="text" id="writer" name="writer"/>
			</div>
			<div class="">
				<label class="form-label" for="content">내용</label>
			<textarea class="form-control" name="content" id="content" rows="5"></textarea>
			</div>
			<div class="">
				<label class="form-label" for="pwd">비밀번호</label>
				<input class="form-control" type="password" id="pwd" name="pwd" aria-labelledby="passwordHelpBlock" />	
			</div>
			<button type="submit" class="btn btn-outline-primary mt-3">등록</button>
		</form>
	</div>
</body>
</html>