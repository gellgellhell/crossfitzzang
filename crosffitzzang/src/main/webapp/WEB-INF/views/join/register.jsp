<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script src = "${root}/resources/jsfile/join.js"></script>
<script src = "${root}/resources/jsfile/addr.js"></script>
</head>

<body>
	<div class="container">
		<%@ include file="../home_header.jsp" %>
		<h1 class="text-center text-muted mt-4">회원 가입</h1>
		<hr>

<!-- 		<div class="clearfix"> -->
<!-- 			<div class="w-25 float-left"> -->
			
<!-- 			</div> -->
<!-- 			<div class="col-sm-9 float-right"> -->
				<div class="form-group">
					<label for="id">아이디 <span id="id_desc"></span></label>
					<div class="form-inline">
						<input type="text" class="form-control inputEng mr-1"
							id="id" name="id" maxlength="20" size="69">
						<button type="button" id="btn_idchk"
							class="btn btn-dark">중복 확인</button>
					</div>
						<input type="hidden" id="id_chk_yn" value="0">
				</div>
					<div class="form-group justify-content-center">
						<label for="pwd">비밀번호</label>
						<div class="form-inline">
						<input type="password" class="form-control"
							id="pwd" name="pwd" maxlength="20" size="69">
						</div>
					</div>
				<div class="form-group">
					<label for="pwdre">비밀번호 확인</label>
					<div class="form-inline">
					<input type="password" class="form-control "
						id="pwdre" name="pwdre" maxlength="20" size="69">
					</div>
				</div>
				<div class="form-group">
					<label for="name">이름</label>
					<div class="form-inline">
						<input type="text" class="form-control mr-1"
							id="name" name="name" maxlength="20" size="69">
					</div>
						
				</div>
				<div class="form-group">
					<label for="tel1">전화번호</label>
					<div class="form-inline">
						<input type="text" class="form-control mr-1 inputNum"
							id="tel1" name="tel1"
							size="3" maxlength="3">
						- <input type="text" class="form-control ml-1 mr-1 inputNum"
							id="tel2" name="tel2"
							size="4" maxlength="4">
						- <input type="text" class="form-control ml-1 inputNum"
							id="tel3" name="tel3"
							size="4" maxlength="4">
					</div>
				</div>
				<div class="form-group">
					<label for="email1">이메일</label>
					<div class="form-inline">
						<input type="text" class="form-control mr-1 inputEmail"
							id="email1" name="email1"
							maxlength="30">
						@ <input type="text" class="form-control ml-1 inputEmail"
							id="email2" name="email2"
							maxlength="30">
					</div>
				</div>
			
				<div>
					<label>주소</label>
					<div class="form-inline">
						<input type="text" class="form-control mr-1 mb-1"
							placeholder="우편번호" size="14" readonly
							id="zone_code" name="zone_code">
						<button type="button" id="btn_addr"
							class="btn btn-dark mr-1">주소검색</button>
					</div>
					<div>
						<div class="form-inline">
						<input type="text" class="form-control mr-1" size="25"
							placeholder="주소" size="35" readonly
							id="addr1" name="addr1">
						<input type="text" class="form-control"
							placeholder="상세주소" size="35"
							id="addr2" name="addr2">
							</div>
					</div>
				</div>
<!-- 			</div>float-right -->
<!-- 		</div>clearfix -->
		
		<%@ include file = "service.jsp" %>

	<hr>

	
		<div class="text-right mb-5">
			<button type="button" id="btn_join"
				class="btn btn-dark"> 회 원 가 입 </button>
		</div>

	</div><!-- container -->
</body>
</html>






