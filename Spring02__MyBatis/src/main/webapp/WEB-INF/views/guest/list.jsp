<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>guest/list.jsp</title>
<style>
	.container{
		font-size:13px;
	}
	thead{
		background : #f5ceab;
		color: #fff;
		font-size: 13px;
    	letter-spacing: 5px;
	}
	td{
		padding: 0.75rem 1.25rem;
	}
	.bc{
		background-color: #f5bcab;
		border-radius: 3px;
   		padding: 10px 15px;
    	font-size: 12px;
    	letter-spacing: 2px;
    	color: #fff!important;
    	border : 1px solid #fff;
	}
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="mt-3">
      
        <a href="${pageContext.request.contextPath }/guest/insertform">
      	  <button class="bc mb-3">방명록 작성하기</button>
        </a>  
      </div>
		<table class="table">
			<thead>
				<tr>
					<th>번호</th>
					<th>작성자</th>
					<th>내용</th>
					<th>날짜</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>	
			</thead>
			<tbody>
				<c:forEach var="tmp" items="${list }">
					<tr>
						<td>${tmp.num }</td>
						<td>${tmp.writer }</td>
						<td>
							<textarea class="form-control" rows="5" readonly>${tmp.content }</textarea>
						</td>
						<td>${tmp.regdate }</td>
						<td>
							<a href="${pageContext.request.contextPath }/guest/updateform.do?num=${tmp.num }">
								<button class="btn btn-outline-primary">수정</button>
							</a>
						</td>
						<td>
							<form action="delete.do" method="post">
							<input type="hidden" name="num" value="${tmp.num } "/>
							<input class="form-control" type="password" name="pwd" placeholder="비밀번호 입력"/>
							<button type="submit" class="btn btn-outline-warning">삭제</button>
						</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>