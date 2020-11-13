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
				<h1 class="mb-3 font-weight-bold text-center text-muted">회원권에 대해서</h1>
				<hr>
				<div class="clearfix">
				<section class="col-11 float-right bg-white font-weight-bold nav-link mb-5 mt-3" style="height: 550px">
	
				
				<h3>Q. 단일회원권이란 무엇인가요?</h3>
				<br>
				<p>A. 기존 운동시설을 다니던 그 방식 그대로 미치다를 통해 1개 시설을 결제하여 등록할 수 있는 회원권입니다. </p>
				<p>방문하여 결제했을 때와 동일하게 이용하실 수 있습니다.  </p>

				<p>미치다를 통해 결제하시면 미치다회원가 할인과 무이자 할부 혜택 까지 받으실 수 있으니,  </p>
				<p>마음에 드는 시설이 있다면 미치다로 편리하게 바로 결제해보세요!  </p>

				<p>*다만, 출석 시 지급받는 포인트 및 쿠폰은 사용이 불가합니다.  </p>
				<p>*통합회원권에서만 출석 시 포인트 지급 및 쿠폰 사용 가능 </p>
				<br>

				<h3>Q. 통합회원권(다른 곳 같이다니기)란 무엇인가요?</h3>
				<br>
				<p>A. 위치와 종목에 상관없이 내가 다니고 싶은 운동시설을 최대 3개까지 골라 </p>
				<p>80% 할인받아 다니는 미치다만의 특별한 서비스입니다. </p>
				<p>기존 회원권과 동일하게 1, 3, 6, 12개월 모두 이용이 가능하며 </p>
				<p>미치다에 등록된 운동시설 중 어느 곳이든 미치다 통합회원권으로 조합을 만들어보세요! </p>
				<p>결합하는 센터의 조합에 따라 가격이 다르게 책정되며 최대 80%까지 할인됩니다. </p>
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