<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/member/list.jsp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
</head>
<body>
   <div class="container">
      <div class="mt-3">
      	<h1>회원 목록</h1>
        <a href="${pageContext.request.contextPath }/member/insertform">
      	  <button class="btn btn-secondary mb-3">회원 추가</button>
        </a>  
      </div>
      <table class="table">
         <thead class="table-dark">
            <tr>
               <th>번호</th>
               <th>이름</th>
               <th>주소</th>
               <th>삭제</th>
               <th>수정</th>
            </tr>
         </thead>
         <tbody>
            <c:forEach var="tmp" items="${list }">
               <tr>
                  <td>${tmp.num }</td>
                  <td>${tmp.name }</td>
                  <td>${tmp.addr }</td>
                  <td>
                 	 <a href="${pageContext.request.contextPath }/member/delete.do?num=${tmp.num }">
                	 	<button class="btn btn-outline-primary">삭제</button>
                 	 </a>
                  </td>
                  <td>
                  	<a href="${pageContext.request.contextPath }/member/updateform.do?num=${tmp.num}">
                  		<button class="btn btn-outline-warning">수정</button>
                  	</a>
                  </td>
               </tr>
            </c:forEach>
         </tbody>
      </table>
   </div>
</body>
</html>

