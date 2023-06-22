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
	<div class="container row g-3 align-items-center">
		<h1>회원 수정 폼</h1>
		<form action="update.do" method="post">
		<input type="hidden" name="num" value="${dto.num }" />
		<div class="col-auto">
         <label for="num" class="col-form-label">번호</label>
         <input class="form-control" type="text" id="num" value="${requestScope.dto.num }" disabled/>
     	 </div>
		<div class="col-auto">
			<label for="name" class="col-form-label">이름</label>
			<input type="text" name="name" id="name" value="${dto.name }" class="form-control"/>
		</div>
		<div class="col-auto mb-3">
			<label for="addr" class="col-form-label">주소</label>
			<input class="form-control" type="text" name="addr" id="addr" value="${dto.addr }"/>
		</div>
		<button type="submit" class="btn btn-outline-primary">수정하기</button>
		<button type="reset" class="btn btn-outline-warning">취소</button>
		</form>
	  </div>	
</body>
</html>