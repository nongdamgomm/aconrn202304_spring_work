<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/member/insertform.jsp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
</head>
<body>
<div class="container row g-3 align-items-center">
   <h1>회원 추가 폼</h1>
   <form action="${pageContext.request.contextPath }/member/insert" method="post">
      <div class="col-auto">
         <label for="name" class="col-form-label">이름</label>
         <input type="text" name="name" id="name" class="form-control"/>
      </div>
      <div class="col-auto mb-3">
         <label for="addr" class="col-form-label">주소</label>
         <input type="text" name="addr" id="addr" class="form-control" />
      </div>
      <button type="submit" class="btn btn-outline-info">추가</button>
   </form>
</div>
</body>
</html>