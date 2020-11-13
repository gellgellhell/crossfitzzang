<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fdetail1</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#btn_back").click(function() {
		location.href="${root}/";
	});//click
});//ready
</script>
</head>
<body>
	<div class="container">
			<%@ include file="../home_header.jsp" %>
				<br>
				<h1 class="mb-3 font-weight-bold text-center text-muted">이용약관</h1>
				<hr>
				<br>
				<div class="clearfix">
				<section class="col-11 float-right bg-white font-weight-bold nav-link mb-5 mt-3" style="height: 560px">
				<p> 여러분을 환영합니다.</p>
				<p>	다양한 미치다 서비스를 즐겨보세요. </p>
				<p>	회원으로 가입하시면 미치다 서비스를 보다 편리하게 이용할 수 있습니다. </p>
				<p>	여러분이 제공한 콘텐츠를 소중히 다룰 것입니다. </p>
				<p>	여러분의 개인정보를 소중히 보호합니다. </p>
				<p>	타인의 권리를 존중해 주세요. </p>
				<p>	미치다 서비스 이용과 관련하여 몇 가지 주의사항이 있습니다. </p>
				<p>	미치다에서 제공하는 다양한 포인트를 요긴하게 활용해 보세요. </p>
				<p>	부득이 서비스 이용을 제한할 경우 합리적인 절차를 준수합니다. </p>
				<p>	미치다의 잘못은 네이버가 책임집니다. </p>
				<p>	일부 미치다 서비스에는 광고가 포함되어 있습니다. </p>
				<p>	언제든지 미치다 서비스 이용계약을 해지하실 수 있습니다. </p>
				<p>	서비스 중단 또는 변경 시 꼭 알려드리겠습니다. </p>
				<p>	주요 사항을 잘 안내하고 여러분의 소중한 의견에 귀 기울이겠습니다. </p>
				<p>	여러분이 쉽게 알 수 있도록 약관 및 운영정책을 게시하며 사전 공지 후 개정합니다. </p>
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