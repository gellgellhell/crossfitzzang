<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pwd_find</title>
<meta charset="UTF-8">
<title>id_find</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#btn_pwd_find").click(function() {
		$.post(
				"${root}/pwd_find"
				,{
					id : $("#find_id").val()
					, name : $("#find_name").val()
					, email : $("#find_email").val()
				}
				, function(data, status) {

					alert("회원가입 시 사용한 비밀번호는 " +data+ " 입니다." );

				}//function
		);//post
	});//click

	$("#btn_home_back").click(function() {
		location.href="${root}/";
	});//click

});//ready
</script>
</head>
<body>
<div class="container">
			<%@ include file="../home_header.jsp" %>
				<br>
				<h1 class="mb-3 font-weight-bold text-center text-muted">회원 비밀번호 찾기</h1>
				<hr>
		
					<div class="form-group">
					<label for="find_name">회원 아이디<span id="id_desc"></span></label>
					<div class="form-inline">
						<input type="text" class="form-control inputEng mr-1"
							id="find_id" name="find_id" maxlength="20" size="55">
					</div>
					</div>
					
					<div class="form-group">
					<label for="find_name">회원 이름<span id="id_desc"></span></label>
					<div class="form-inline">
						<input type="text" class="form-control inputEng mr-1"
							id="find_name" name="find_name" maxlength="20" size="55">
					</div>
					</div>
					
					<div class="form-group">
					<label for="find_name">회원 이메일<span id="id_desc"></span></label>
					<div class="form-inline">
						<input type="text" class="form-control inputEng mr-1 mb-2"
							id="find_email" name="find_email" maxlength="20" size="55">
					</div>
					</div>
					<hr>

			
			<div class="float-right mb-3">
				<button type="button" id="btn_pwd_find"
						class="btn btn-dark text-white">검색</button>
				<button type="button" id="btn_home_back"
						class="btn btn-dark text-white">돌아가기</button>
			</div>

		</div>
		<br><br><br><br>
		<%@ include file="../home_footer.jsp" %>
</body>
</html>