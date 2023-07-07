<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<style>

	.containerr {
	  border-radius: 5px;
	  padding: 20px;
	  background-color: #f2f2f2;
	}
	
   .img-wrapper{
      height: 250px;
      transition: transform 0.3s ease-out;
   }
   
   @media(max-width: 575px){
   		.img-wrapper{
   			height: 400px;
   		}
   }
   
   .card .card-text{
      display:block;
      white-space : nowrap;
      text-overflow: ellipsis;
      overflow: hidden;
   }
   	.img-wrapper img{
	   	width: 100%;
	   	height: 100%;
		object-fit: cover;	
   	}
   	h1{
   		float:left;
   	}
   	.list_title{
   		display:flex;
   		border-bottom: 2px solid #6d6e71;
   		padding: 16px 0;
   		margin-bottom:15px;
   		width:100%;
   		justify-content: space-between;
   	}
   	.link{
   		float:right;
   		color:#6d6e71;
   		text-decoration: none;
   		line-height: 2.5rem;
   	}
   	.link:hover{
   		color:#6d6e71;
   		font-weight:700;
   	}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/include/navbar.jsp">
		<jsp:param value="list" name="current"/>
</jsp:include>
<div class="containerr">
       <div class="list_title">
       	<h1>REVIEW</h1>
   	   	<a class="link" href="${pageContext.request.contextPath}/review/insertform">작성하기</a>
       </div>
   	<div class="row">
		<c:forEach var="tmp" items="${list }">
			<div class="col-sm-6 col-md-4 col-lg-3">
         		<div class="card mb-3">
            		<a href="${pageContext.request.contextPath}/review/detail?num=${tmp.num}">
	               		<div class="img-wrapper">
	                  		<img class="card-img-top" src="${pageContext.request.contextPath }" />
	               		</div>
            		</a>
            		<div class="card-body">
               			<p class="card-text">${tmp.title}</p>
               			<p class="card-text">by <strong>${tmp.writer}</strong></p>
               			<p><small>${tmp.regdate}</small></p>
            		</div>
         		</div>
      		</div>
		</c:forEach>
   	</div>
   	<nav>
	<ul class="pagination justify-content-center">
		<c:choose>
			<c:when test="${startPageNum ne 1 }">
				<li class="page-item">
               		<a class="page-link" href="${pageContext.request.contextPath}/review/list?pageNum=${startPageNum - 1}">Prev</a>
            	</li>
			</c:when>
			<c:otherwise>
				<li class="page-item disabled">
               		<a class="page-link" href="javascript:">Prev</a>
            	</li>
			</c:otherwise>
		</c:choose>
		<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
			<c:choose>
				<c:when test="${i eq pageNum }">
					<li class="page-item active">
                  		<a class="page-link" href="${pageContext.request.contextPath}/review/list?pageNum=${i}">${i }</a>
               		</li>
				</c:when>
				<c:otherwise>
					<li class="page-item">
                  		<a class="page-link" href="${pageContext.request.contextPath}/review/list?pageNum=${i}">${i}</a>
               		</li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:choose>
			<c:when test="${endPageNum lt totalPageCount }">
				<li class="page-item">
               		<a class="page-link" href="${pageContext.request.contextPath}/review/list?pageNum=${endPageNum + 1}">Next</a>
            	</li>
			</c:when>
			<c:otherwise>
				<li class="page-item disabled">
               		<a class="page-link" href="javascript:">Next</a>
            	</li>
			</c:otherwise>
		</c:choose>
      </ul>
   </nav>
</div>
<%-- <script>
   // card 이미지의 부모 요소를 선택해서 imgLiquid  동작(jquery plugin 동작) 하기 
   $(".img-wrapper").imgLiquid();
</script> --%>
</body>
</html>