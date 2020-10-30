<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소개페이지</title>
<meta name="viewport" content="width=1080px,maximum-scale=2.0,minimum-scale=0.4,user-scalable=yes">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>

	<div class="container clearfix">
		<%@ include file="../home_header.jsp" %>
	<!-- 왼쪽 칸 시작 -->
	<section class="col-3 float-left bg-light font-weight-bold nav-link mb-5 mt-3" style="height: 580px">
		<ul>
			<li class="label mt-2 mb-2 list-group-item list-group-item-action">
					<a href="${root}/introduce/crossfit"><span class="notice">크로스핏이란</span></a>
				</li>

				<li class="label mt-2 mb-2 list-group-item list-group-item-action">
					<a href="${root}/introduce/introduce"><span class="notice">소개</span></a>
				</li>
			
			<li class="label list-group-item list-group-item-action">
				<a href = "${root}/introduce/map"><span class ="come">오시는 길</span></a>
			</li>
		</ul>
	</section>
	<!-- 왼쪽 칸 끝 -->
	
	<!-- 오른쪽 칸 시작 -->
	<section class="col-8 float-left font-weight-bold mt-3">
		<h1 style="">Crossfit</h1>
			<p>크로스핏은 여러 종목의 운동을 섞어서 운동한다는 뜻으로 크로스 트레이닝과 신체 활동을 의미하는 피트니스가 합쳐진 말을 의미합니다.
			어떤 한 분야만이 아니라 여러 가지 신체 영역의 능력을 골고루 극대화하기 위해서 고안된 운동이며, 
			생소할 수 있는 크로스핏 운동에대한 대중화, 정보습득,고객님들의 합리적인 선택을 위해 만들어졌습니다.</p>
			
			<p class="text-right"> - 운동에 미치다</p>
	</section>
		</div>
<%@ include file="../home_footer.jsp" %>

</body>
</html>