<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
<style>
	*{
	  box-sizing: border-box;
	}
	p{
		text-align:center;
		font-weight:bold;
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
	  background-color: #f2f2f2;
	  padding: 20px;
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
		<jsp:param value="signup_form" name="current"/>
	</jsp:include>
	<div class="container">
	<p>회원가입</p>
	  <form action="${pageContext.request.contextPath }/users/signup" method="post" id="myForm">  
	  <div class="roww">
	    <div class="col-25">
	      <label class="control-label" for="id">아이디</label>
	    </div>
	    <div class="col-75">
	      <input class="form-control" type="text" name="id" id="id" placeholder="아이디를 입력하세요">
	      <small class="form-text text-muted">영문자 소문자로 시작하고 5글자~10글자 이내로 입력하세요</small>
	      <div class="valid-feedback">사용 가능한 아이디 입니다.</div>
		  <div class="invalid-feedback">사용할 수 없는 아이디 입니다.</div>
	    </div>
	  </div>
	  
      <div class="roww">
	    <div class="col-25">
	      <label class="control-label" for="email">이메일</label>
	    </div>
	    <div class="col-75">
	      <input class="form-control" type="text" name="email" id="email" placeholder="example@email.com">
	      <div class="invalid-feedback">이메일 형식에 맞게 입력하세요.</div>
	    </div>
	  </div>
	  
	  <div class="roww">
	    <div class="col-25">
	      <label class="control-label" for="pwd">비밀번호</label>
	    </div>
	    <div class="col-75">
	      <input class="form-control" type="password" name="pwd" id="pwd" placeholder="비밀번호를 입력하세요">
	      <small class="form-text text-muted">특수 문자를 하나 이상 조합하세요.</small>
		  <div class="invalid-feedback">비밀 번호를 확인 하세요</div>
	    </div>
	  </div>
	  
      <div class="roww">
	    <div class="col-25">
	      <label class="control-label" for="pwd2">비밀번호 확인</label>
	    </div>
	    <div class="col-75">
	      <input class="form-control" type="password" name="pwd2" id="pwd2" placeholder="비밀번호를 확인하세요">
	    </div>
	  </div>
	  <br>
	  <div class="roww">
	    <input type="submit" >
	  </div>
	  </form>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
	<script>
		
		let isIdValid=false;
		let isEmailValid=false;
		let isPwdValid=false;
		
		//폼 전체의 유효성 여부를 판단해서 제출버튼의 disabled 속성을 관리하는 함수 
		function checkFormState(){
			if(isIdValid && isEmailValid && isPwdValid){
				$("button[type=submit]").removeAttr("disabled");
			}else{
				//속성명만 추가할때는 value 에 빈 문자열을 작성하면 된다.
				$("button[type=submit]").attr("disabled", "");
			}
		}
		
		// id 입력란에 입력을 했을때 실행할 함수 등록
		$("#id").on("input", (e)=>{
			//입력한 아이디 읽어오기
			const inputId=e.target.value;
			//정규표현식
			const reg=/^[a-z].{4,9}$/;
			//정규표현식 통과 여부를 변수에 저장
			isIdValid=reg.test(inputId);
			//만일 유효하다면 
			if(isIdValid){
				$(e.target).removeClass("is-invalid").addClass("is-valid");
			}else{//유효하지 않다면
				$(e.target).removeClass("is-valid").addClass("is-invalid");
			}
			checkFormState();
		});
	
		$("#email").on("input", (e)=>{
			//입력한 email 을 읽어와서 
			const inputEmail=$(e.target).val();
			//이메일 형식에 맞게 작성했는지 검증을 해서 
			const reg=/@/;
			//유효성 여부를 변수에 저장하고 
			isEmailValid=reg.test(inputEmail);
			//유효 하다면 
			if(isEmailValid){
				$(e.target).removeClass("is-invalid").addClass("is-valid");
			}else{//유효하지 않다면
				$(e.target).removeClass("is-valid").addClass("is-invalid");
			}
			checkFormState();
		});
		//비밀번호 입력란과 비밀번호 확인란에 입력했을때 실행할 함수 등록(다중선택)
		$("#pwd, #pwd2").on("input", ()=>{
			//비밀번호 입력란과 확인란에 입력한 비밀번호를 모두 읽어온다.
			const pwd=$("#pwd").val();
			const pwd2=$("#pwd2").val();
			//특수문자가 포함되었는지 여부를 검증할 정규 표현식
			const reg=/[\W]/;
			//정규표현식도 통과하고 비밀번호 입력란과 확인란도 같은지 확인해서 비밀번호 유효성 여부에 반영
			isPwdValid = reg.test(pwd) && (pwd == pwd2);
			if(isPwdValid){
				$("#pwd").removeClass("is-invalid").addClass("is-valid");
			}else{
				$("#pwd").removeClass("is-valid").addClass("is-invalid");
			}
			checkFormState();
		});
	
	</script>
	
</body>
</html>