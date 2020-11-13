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
				<h1 class="mb-3 font-weight-bold text-center text-muted">결제/환불에 대해서</h1>
				<hr>
				<div class="clearfix">
				<section class="col-11 float-right bg-white font-weight-bold nav-link mb-5 mt-3" style="height: 920px">
	
				
				<h3>Q. 결제 내역은 어디서 보나요?</h3>
				<br>
				<p>A. [더보기] 혹은 왼쪽 상단 사이드 메뉴를 통해 [나의 회원권] 메뉴로 들어간 뒤, </p>
				<p>[구매내역 전체보기]를 클릭하시면 미치다으로 등록했던 회원권의 결제 내역을 조회하실 수 있습니다. </p>
				<br>
				<h3>Q. 간편 결제란 무엇인가요?</h3>
				<br>
				<p>A. 고객님이 자주 사용하는 카드를 최초 1회만 등록해 두고 이후부터는 클릭 한번으로 </p>
				<p>회원권을 결제할 수 있는 간편한 결제수단입니다. </p>
				<p>단, 간편결제의 경우 할부가 지원되지 않으니 고객님의 상황에 맞게 이용하시면 됩니다. </p>
				<br>
				<h3>Q. 결제가 안될 땐 어떻게 해야하나요?</h3>
				<br>
				<p>A. 먼저, 서비스 이용 중 불편을 드려 죄송합니다. </p>
				<p>미치다 고객센터로 연락주시거나 다른 이용환경(앱/웹)을 이용해 주세요. </p>
				<br>
				<h3>Q. 환불을 하려면 어떻게 해야하나요?</h3>
				<br>
				<p>[단일회원권]</p>
				<p>→ 결제일로부터 7일 이전이고 운동시설에 방문한적이 없는 경우 미치다가 100% 환불해 드립니다. </p>
				<p>→ 운동시설에 1회 이상 방문하신 적이 있는 경우 운동시설 내규에 따라 운동시설로부터 환불받으실 수 있습니다. </p>
				<p>경우에 따라서는 고객님이 운동시설에 환불신청시까지의 이용금액과 위약금을 지불하고 </p>
				<p>미치다에서 전액취소 되는 방식으로 처리되기도 합니다. </p>
				
				<p>[통합회원권]</p>
				<p>→ 결제일로부터 7일 이전이고, 운동시작일 전인 경우 미치다가 100% 환불해 드립니다. </p>
				<p>→ 결제일로부터 8일 이상 경과되었거나, 운동시작일 이후인 경우 미치다에서 위약금 10%와, </p>
				<p>환불신청시까지의 이용금액을 공제한 후 환불을 처리해 드립니다. </p>
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