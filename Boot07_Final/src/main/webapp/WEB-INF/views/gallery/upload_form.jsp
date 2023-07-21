<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>upload_form.jsp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<form action="${pageContext.request.contextPath }/gallery/upload" method="post" 
		enctype="multipart/form-data">
			<div class="mb-3">
			  	<label for="image" class="form-label">이미지 업로드하기</label>
			  	<input class="form-control" type="file" id="image" name="image" accept=".jpg, .jpeg, .png, .JPG, .JPEG">
			</div>
			<div class="mb-3">
			  	<label for="caption" class="form-label">내용</label>
			 	<textarea class="form-control" name="caption" id="caption" rows="3"></textarea>
			</div>
			<div class="col-auto">
			    <button type="submit" class="btn btn-primary mb-3">등록</button>
			</div>	
		</form>
		<br />
		<img src="" alt="" id="preview"/>
	</div>
	<script>

		document.querySelector("#image").addEventListener("change",(e)=>{
			//선택된 파일 객체를 얻어낸다
			const files = e.target.files;
			//만일 파일 데이터가 존재한다면
			if(files.length>0){
				//파일로부터 데이터를 읽어들일 객체 
				const reader = new FileReader();
				//로딩이 완료(파일 데이터를 모드 읽었을때)되었을 때 실행할 함수 등록
				reader.onload=(event)=>{
					//읽은 파일 데이터 얻어내기
					const data = event.target.result;
					document.querySelector("#preview").setAttribute("src",data);
					//console.log(data);
				};
				//파일을 DataURL 형식의 문자열로 읽어들이기
				reader.readAsDataURL(files[0]);
				
			}
		});
	</script>
</body>
</html>