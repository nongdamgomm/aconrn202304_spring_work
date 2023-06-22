<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>views/home.jsp</title>
</head>
<body>
	<div class="container">
		<h1>인덱스 페이지</h1>
		<ul>
			<li><a href="${pageContext.request.contextPath }/member/insertform">파라미터 추출 테스트</a></li>
			<li><a href="${pageContext.request.contextPath }/fortune">오늘 운세보기</a></li>
			<li><a href="${pageContext.request.contextPath }/member/delete?num=1"> 작업 후 리다일렉트 응답</a></li>
			<li><a href="${pageContext.request.contextPath }/member/insertform">JSON 응답받기</a></li>
		</ul>
		<h2>공지사항</h2>
		<ul>
			
		</ul>
	</div>
</body>
</html>
