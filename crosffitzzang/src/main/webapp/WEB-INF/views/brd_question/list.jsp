<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자주 묻는 질문</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<script type="text/javascript">
$(document).ready(function() {
	$("#btn_back").click(function() {
		location.href="${root}/";
	});//click
});//ready
</script>
	<div class="container">
	<%@ include file="../home_header.jsp" %>
				<h1 class="text-center text-muted mt-4">자주 묻는 질문</h1>
		<hr>
		<div class="clearfix">
			<!-- section start -->
		<section class="col-11 float-right bg-white font-weight-bold nav-link mb-5 mt-3" style="height: 400px">
		<ul>
			<li class="label mt-3 mb-4">
				<a href = "${root}/brd_question/qdetail1"><span class = "text-muted">Q. 미치다에 대해서</span></a>
			</li>
			
			<li class="label mt-3 mb-4">
				<a href = "${root}/purchase/bag"><span class = "text-muted">Q. 회원권에 대해서</span></a>
			</li>
			
			<li class="label mt-3 mb-4">
				<a href = "${root}"><span class ="text-muted">Q. 운동시설에 대해서</span></a>
			</li>
			
			<li class="label mt-3 mb-4">
				<a href = "${root}"><span class ="text-muted">Q. 트레이너의 대해서</span></a>
			</li>
			
			<li class="label mt-3 mb-4">
				<a href = "${root}"><span class ="text-muted">Q. 결제/환불에 대해서</span></a>
			</li>
			
			<li class="label mt-4 mb-3">
				<a href = "${root}"><span class ="text-muted">Q. 사이트 이용 회원에 대해서</span></a>
			</li>
			
		</ul>
	</section>
	</div>
				<hr>
			<div class="float-right mb-3">
				<button type="button" id="btn_back"
						class="btn btn-dark text-white">돌아가기</button>
			</div>
	</div>
	<br><br><br>
	<%@ include file="../home_footer.jsp" %>
</body>
</html>










