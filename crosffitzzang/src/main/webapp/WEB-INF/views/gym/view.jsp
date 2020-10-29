<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체육관 클릭 시 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</head>

<body>
	<div class = "container">
<%@ include file = "../home_header.jsp" %>	

<div id = "demo" class = "carousel slide float-left w-50 mb-2" data-ride = "carousel">

	<!-- 슬라이드 쇼 인디케이터 시작 -->
	<ul class = "carousel-indicators">
		<li data-target = "#demo" data-slide-to = "0" class = "active"></li>
		<li data-target = "#demo" data-slide-to = "1"></li>
		<li data-target = "#demo" data-slide-to = "2"></li>
	</ul>
	<!-- 슬라이드 쇼 인디케이터 끝 -->

	<!-- 슬라이드쇼 시작 -->
	<section class="carousel-inner">
		<div class = "carousel-item active">
			<img src = "${root}/resources/images/gym_newgen_01.jpg" alt = "main1" width = "500" height = "500">
		</div>
    	
		<div class = "carousel-item active">
			<img src = "${root}/resources/images/gym_newgen_02.jpg" alt = "main21" width = "500" height = "500">
		</div>
    
		<div class = "carousel-item active">
			<img src = "${root}/resources/images/gym_newgen_03.jpg" alt = "main3" width = "500" height = "500">
		</div>
    </section>
	<!-- 슬라이드쇼 끝 -->

  <!-- 좌우 변경 -->
	<a class = "carousel-control-prev" href = "#demo" data-slide = "prev">
		<span class = "carousel-control-prev-icon"></span>
	</a>
	<a class = "carousel-control-next" href = "#demo" data-slide = "next">
		<span class = "carousel-control-next-icon"></span>
	</a>
</div>

<!-- 안내사항 시작-->	
	<aside class = "float-right w-50">
	<div class = "table table-hover"  style = "width:500px; height:500px;">
		<h2 class = "text-center">안내사항</h2>
		<div class = "text text-muted">운동복은 각자 챙겨주셔야합니다.<br/>
										수건 및 샤워실은 이용가능합니다.
		</div>
	</div>
</aside>	
<!-- 안내사항 끝 -->
	
<!-- 장바구니 구매하기 끝-->
	<div style="text-align: center" class="mb-3">
		<button type = "button" class="btn btn-primary" onclick="location.href = '${root}/purchase/bag';">장바구니</button>
		<button type = "button" class="btn btn-primary" onclick="location.href = '${root}/purchase/charge';">구매하기</button>
	</div>
<!-- 장바구니 구매하기 끝-->
		

	</div>
	<%@ include file="../home_footer.jsp" %>

</script>
</body>
</html>