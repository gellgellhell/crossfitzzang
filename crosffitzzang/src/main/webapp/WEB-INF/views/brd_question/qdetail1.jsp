<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>qdetail1</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#btn_back").click(function() {
		location.href="${root}/brd_question/list";
	});//click
});//ready
</script>
</head>
<body>
	<div class="container">
			<%@ include file="../home_header.jsp" %>
				<br>
				<h1 class="mb-3 font-weight-bold text-center text-muted">미치다에 대해서</h1>
				<hr>
				<div class="clearfix">
				<section class="col-11 float-right bg-white font-weight-bold nav-link mb-5 mt-3" style="height: 450px">
	
				
				<h3>Q. 미치다는 어떤 서비스인가요?</h3>
				<br>
				<p>A. 미치다는 운동시설 정보를 알고 싶을 때, 원하는 운동시설의 정보를 간편하게 얻고</p>
				<p>불편한 상담 없이 터치 몇 번으로 바로 결제까지 할 수 있는 서비스입니다. </p>

				<p>또한 여러 지역이나 종목의 운동시설을 최대 3개 까지 골라 함께 결제하면 약 80% 할인된 가격 으로 </p>
				<p>이용할 수 있는 다짐만의 통합 회원권 서비스도 제공하고 있습니다. </p>

				<p>다니고 싶은 운동시설의 가격 및 시설 사진을 참고해 비교하시고, </p>
				<p>미치다에서 언제나 최저가로 더 편하게 운동 다니세요! </p>
				<br>

				<h3>Q. 미치다 회원가가 무엇인가요?</h3>
				<br>
				<p>A. 미치다와 운동시설간의 제휴로 다짐 회원 분들께만 특별하게 제공해드리는 할인가입니다. </p>
				<p>미치다 앱에서 결제하시면 바로 회원가 적용을 받으실 수 있습니다. </p>
				<br>
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