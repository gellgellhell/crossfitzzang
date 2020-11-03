<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
<meta charset="UTF-8">
	<title>회원가입</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script src="${root}/resources/jsfile/addr.js"></script>
<script src="${root}/resources/jsfile/join.js"></script>
</head>


<script type="text/javascript">
	$(document).ready(function(){
	// 취소
		$(".cancel").on("click", function(){
		location.href = "/";
		})
		$("#submit").on("click", function(){
		if($("#userPass").val()==""){
			alert("비밀번호를 입력해주세요.");
			$("#userPass").focus();
			return false;
		}
		if($("#userName").val()==""){
			alert("성명을 입력해주세요.");
			$("#userName").focus();
			return false;
		}
			});
		})
</script>
<body>
	<div id="container">
	<%@ include file="../home_header.jsp" %>
	<h1 class="text-center text-muted">회원 정보 수정</h1>
	
			<form action="/{root}" method="post">
			
				<div class="form-group has-feedback">
					<label class="control-label" for="userId">아이디</label>
					<input class="form-control" type="text" id="id" name="id" value = "${login_dto.id}" readonly="readonly"/>
				</div>
				
				<div class="form-group has-feedback">
					<label class="control-label" for="userPass">패스워드</label>
					<input class="form-control" type="password" id="pwd" name="pwd" value = "${login_dto.pwd}" />
				</div>
				
				<div class="form-group has-feedback">
					<label for="tel1">전화번호</label>
						<div class="form-inline">
							<input type="text" class="form-control mr-1 inputNum"id="tel1" name="tel1" size="3" maxlength="3" value="${login_dto.tel}">
							- <input type="text" class="form-control ml-1 mr-1 inputNum" id="tel2" name="tel2" size="4" maxlength="4" value ="${login_dto.tel}">
							- <input type="text" class="form-control ml-1 mr-1 inputNum" id="tel2" name="tel3" size="4" maxlength="4" value ="${login_dto.tel}">
						</div>
				</div>
				
				
				<div class="form-group has-feedback">
					<label class="control-label" for="useremail">이메일</label>
					<input class="form-control mr-1 inputEmail" type="text" id="email" name="email" value="${login_dto.email}"/>
				</div>
				<div class="form-group has-feedback">
					<button class="btn btn-success" type="submit" id="submit">회원정보수정</button>
					<button class="cancel btn btn-danger" type="button">취소</button>
				</div>
			</form>
		</div>
		
	</body>
</html>