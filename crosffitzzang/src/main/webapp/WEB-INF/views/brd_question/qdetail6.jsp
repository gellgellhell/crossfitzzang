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
				<h1 class="mb-3 font-weight-bold text-center text-muted">사이트 이용 회원에 대해서</h1>
				<hr>
				<div class="clearfix">
				<section class="col-11 float-right bg-white font-weight-bold nav-link mb-5 mt-3" style="height: 670px">
	
				
				<h3>Q. 아이디 혹은 비밀번호를 잊었습니다.</h3>
				<br>
				<p>A. 웹 / 앱 내 [오른쪽 상단 메뉴버튼] → [로그인이 필요해요] → [로그인] </p>
				<p>→ [아이디 찾기/비밀번호 찾기] 기능을 이용하시면 됩니다. </p>
				<br>
				<h3>Q. 탈퇴를 하려면 어떻게 해야하나요?</h3>
				<br>
				<p>A. 회원탈퇴를 결정하셨다니 너무 마음이 아프군요... 고객님께서 다음에 찾아오셨을 때 </p>
				<p>만족하실 수 있는 서비스로 성장할 수 있도록 노력하는 미치다가 되겠습니다. </p>
				<p>회원 탈퇴는 메인 화면에서 왼쪽 상단 탭(三) 클릭 후 닉네임 옆 프로필 사진을 클릭하시면 </p>
				<p>오른쪽 아래 [미치다 회원탈퇴]를 통해 회원탈퇴를 하실 수 있습니다. </p>
				<br>
				<h3>Q. 탈퇴 시 보유한 포인트와 회원권, 쿠폰은 어떻게 되나요?</h3>
				<br>
				<p>A. 회원 탈퇴시에는 보유하고 있는 포인트와 쿠폰이 모두 소멸됩니다. </p>
				<p>미치다에서는 탈퇴한 고객님의 모든 정보를 즉시 폐기하기 때문에 탈퇴 후 </p>
				<p>재가입 하시더라도 기존에 보유하고 있는 포인트나 쿠폰을 복구하는 것이 불가능하기 때문에, </p>
				<p>탈퇴 전 반드시 확인을 부탁드립니다.단, 회원권 이용 중에는 탈퇴가 불가능하며,</p>
				<p> 회원권 이용기간이 종료된 이후에 탈퇴가 가능합니다. </p>
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