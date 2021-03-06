<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />    

<!DOCTYPE html>
<html>
<head>
<style>
.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  text-align: center;
  padding : 11px;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  cursor: pointer;
  width: 300px;

}
</style>
<meta charset="UTF-8">
<title>마이 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#btn_back").click(function() {
		location.href="${root}/";
	});//click
});//ready
</script>
<%@ include file="../join/login_check.jsp" %>

</head>
<body>
		<div class="container">
		<%@ include file="../home_header.jsp" %>

				<h1 class="text-center text-muted mt-4">마이 페이지</h1>
			<hr>
			<br>
		<div class="clearfix">
			<!-- section start -->
		<section class="col-10 float-right bg-white font-weight-bold nav-link mb-5 mt-3" style="height: 310px">
				<ul>
			<li class="label mt-2 mb-2">
				<a data-toggle="modal" data-target="#login_check" href = "${root}/join/updatembrview"><span class = "text-muted" style="font-size: 120%">회원정보 수정</span></a>
			</li>
			
			<li class="label mt-3 mb-3">
				<a href = "${root}/purchase/bag"><span class = "text-muted" style="font-size: 120%">장바구니</span></a>
			</li>
			
			<li class="label mt-3 mb-3">
				<a href = "${root}"><span class ="text-muted" style="font-size: 120%">결제 관리</span></a>
			</li>
			
			<li class="label mt-3 mb-3">
				<a href = "${root}"><span class ="text-muted" style="font-size: 120%">1:1 문의현황</span></a>
			</li>
		</ul>
		</section>
		</div>
				<hr>
				
			<div class="float-right mb-3">
				<button type="button" id="btn_back"
						class="btn btn-dark text-white">홈 가기</button>
			</div>
			<br><br><br>
			<!-- section end -->
<!-- 			<!-- aside start --> 
<!-- 			<br><br><br><br><br><br><br><br><br> -->
<!-- 			<div class="form-group font-weight-bold col-sm-5 float-right"> -->
<!-- 					<label for="pwd" class="text-muted text-center">본인 확인을 위해 비밀번호를 입력해 주세요.</label> -->
<!-- 						<div class="form-inline"> -->
<!-- 						<input type="password" class="form-control mb-2" id="pwd" name="pwd" maxlength="20" size="30"> -->
<!-- 						<button type = "button" class = "button">확인</button> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 			<!-- aside end --> 
		
		</div>
		<%@ include file="../home_footer.jsp" %>
</body>
</html>