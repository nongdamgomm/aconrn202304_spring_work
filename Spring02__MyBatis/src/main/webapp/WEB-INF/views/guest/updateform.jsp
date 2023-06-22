<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>guest/updateform.jsp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<div class="">
			<h1>방명록 수정하기</h1>
		</div>
		<form action="update.do" method="post">
		<input type="hidden" name="num" value="${dto.num }" />
			<div class="col-auto">
				<label class="form-label" for="num">글번호</label>
				<input class="form-control" type="text" id="num" name="num" disabled readonly value="${requestScope.dto.num }"/>
			</div>
			<div class="col-auto">
				<label class="form-label" for="writer">작성자</label>
			<input class="form-control" type="text" id="writer" name="writer" value="${dto.writer }"/>
			</div>
			<div class="col-auto">
				<label class="form-label" for="content">내용</label>
			<textarea class="form-control" name="content" id="content" rows="5" >${dto.content }</textarea>
			</div>
			<div class="col-auto">
				<label class="form-label" for="pwd">비밀번호 입력</label>
				<input class="form-control" type="password" id="pwd" name="pwd" aria-labelledby="passwordHelpBlock" />	
			</div>
			<button type="submit" class="btn btn-outline-primary mt-3">수정</button>
			<button type="reset" class="btn btn-outline-warning mt-3">취소</button>
		</form>
	</div>
</body>
</html>