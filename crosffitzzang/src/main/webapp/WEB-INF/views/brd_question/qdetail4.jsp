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
				<h1 class="mb-3 font-weight-bold text-center text-muted">트레이너의 대해서</h1>
				<hr>
				<div class="clearfix">
				<section class="col-11 float-right bg-white font-weight-bold nav-link mb-5 mt-3" style="height: 510px">
	
				
				<h3>Q. 트레이너입니다. 미치다에 등록하려면 어떻게 해야하나요?</h3>
				<br>
				<p>A. 현재는 운동시설에 소속되어 있는 트레이너만 등록이 가능합니다. </p>
				<p>[미치다 제휴시설 소속 트레이너의 경우] </p>
				<p> → 소속 운동시설 내 관리자를 통해 신청서를 작성해주시면 미치다 제휴담당부서에서 확인하고 연락드립니다. </p>
				<p>[미치다 제휴시설 소속 트레이너가 아닌 경우] </p>
				<p> → 먼저 해당 운동시설과 미치다의 제휴가 필요합니다. 사장님을 설득해서 </p>
				<p>미치다로 회원권 매출도, P.T 매출도 효과적으로 올려보세요. </p>
				<br>

				<h3>Q. 트레이너 프로그램(P.T)을 결제하려면 어떻게 해야하나요?</h3>
				<br>
				<p>A. 현재 개별 트레이너의 P.T 상품을 결제할 수 있는 기능은 제공되지 않습니다. </p>
				<p>미치다앱에서 충분히 1:1 상담을 받으신 후 운동시설로 방문하시어 </p>
				<p>미치다회원에게만 제공되는 혜택가격으로 결제하시면 됩니다. </p>
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