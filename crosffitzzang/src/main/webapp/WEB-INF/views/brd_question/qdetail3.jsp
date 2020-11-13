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
				<h1 class="mb-3 font-weight-bold text-center text-muted">운동시설에 대해서</h1>
				<hr>
				<div class="clearfix">
				<section class="col-11 float-right bg-white font-weight-bold nav-link mb-5 mt-3" style="height: 380px">
	
				
				<h3>Q. 원하는 시설이 없으면 어떻게 하나요?</h3>
				<br>
				<p>A. 미치다는 새로운 시설을 업데이트 해드리기 위해 눈이오나 </p>
				<p>비가오나 열심히 뛰어다니고 있습니다.  </p>
				<p>다만, 당장 이용하고 싶으신 시설이 미치다에 등록되어 있지 않은 경우 </p>
				<p>웹 / 앱 내 [더 보기] → [시설등록요청]을 통해 제휴를 원하는 운동시설 </p>
				<p>정보를 알려주시면 미치다가 직접 찾아가고 있습니다. </p>
				<p>또한 제휴에 대한 진행 상황을 알려드리고 있습니다. </p>
				<p>원하시는 운동시설이 있으시면 꼭 요청해주세요!  </p>

				
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