<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link href="https://cdn.jsdelivr.net/npm/@sweetalert2/theme-dark@4/dark.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.js"></script>
<style>
	*{
	  box-sizing: border-box;
	}
	p{
		text-align:center;
	}
	
	body{
		background-color: #f2f2f2;
	}
	
	input[type=text], input[type=password], select, textarea {
	  width: 100%;
	  padding: 12px;
	  border: 1px solid #ccc;
	  border-radius: 4px;
	  resize: vertical;
	}
	
	label {
	  padding: 12px 12px 12px 0;
	  display: inline-block;
	}
	
	input[type=submit] {
	  background-color: #dbcfc1;
	  color: white;
	  padding: 12px 20px;
	  border: none;
	  border-radius: 4px;
	  cursor: pointer;
	  float: right;
	}
	
	input[type=submit]:hover {
	  background-color: #ede8e1;
	}
	
	.container {
	  border-radius: 5px;
	  padding: 20px;
	  background-color: #f2f2f2;
	}
	
	.col-25 {
	  float: left;
	  width: 25%;
	  margin-top: 6px;
	}
	
	.col-75 {
	  float: left;
	  width: 75%;
	  margin-top: 6px;
	}
	

	.roww::after {
	  content: "";
	  display: table;
	  clear: both;
	}
	
	.join{
		color:#8a7f71;
	}
	
	
	/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
	@media screen and (max-width: 600px) {
	  .col-25, .col-75, input[type=submit] {
	    width: 100%;
	    margin-top: 0;
	  }
	}
	
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/navbar.jsp">
		<jsp:param value="loginform" name="current"/>
	</jsp:include>
	<div class="container">
	<p>로그인</p>
	  <form action="${pageContext.request.contextPath }/users/login" method="post">
	  <c:choose>
				<c:when test="${ empty param.url }">
					<input type="hidden" name="url" value="${pageContext.request.contextPath}/"/>
				</c:when>
				<c:otherwise>
					<input type="hidden" name="url" value="${param.url }"/>
				</c:otherwise>
			</c:choose>
	  
	  <div class="roww">
	    <div>
	      <label for="id">아이디</label>
	    </div>
	    <div>
	      <input type="text" name="id" id="id" placeholder="아이디를 입력하세요">
	    </div>
	  </div>
	  <div class="roww">
	    <div>
	      <label for="pwd">비밀번호</label>
	    </div>
	    <div>
	      <input type="password" name="pwd" id="pwd" placeholder="비밀번호를 입력하세요">
	    </div>
	  </div>
	  
	  <br>
	  <div class="roww">
	    <input type="submit" >
	  </div>
	  <br />
	  <p><a class="join" href="${pageContext.request.contextPath }/users/signup_form">회원가입</a></p>
	  </form>
	</div>
	
	
</body>
</html>