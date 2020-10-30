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
	<iframe class="ml-3 mt-3" width="810"  height="580" src="https://www.youtube.com/embed/bUoBqWrSfZE?amp;autoplay=1&amp;playlist=lDZnM3Uuq0E&amp;loop=1"" 
		frameborder="0" allow = "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen =""></iframe>

		</div>
<%@ include file="../home_footer.jsp" %>

</body>
</html>