<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>베스트 체육관</title>
<meta name="viewport" content="width=1080px,maximum-scale=2.0,minimum-scale=0.4,user-scalable=yes">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body data-spy="scroll" data-target=".div" data-offset="50">
		<div class="container">
		<%@ include file="../home_header.jsp" %>
		</div>
		<div class="container clearfix">
			<h1 class="text-muted text-center mt-3">추천 체육관</h1>

			<section class="col-3 float-left bg-light font-weight-bold nav-link mb-5 mt-2" style="height: 580px">
					<ul>
					<div class="label mt-2 mb-2 list-group-item list-group-item-action"><span class="seoul">지역별 베스트 체육관</span></div>
					<div class="label list-group-item list-group-item-action"><a href=""><span class="kyunggi">서울</span></a></div>
					<div class="label list-group-item list-group-item-action"><a href=""><span class="kyunggi">경기</span></a></div>
					<div class="label list-group-item list-group-item-action"><a href=""><span class="kyunggi">부산</span></a></div>
					<div class="label list-group-item list-group-item-action"><a href=""><span class="kyunggi">그외지역</span></a></div>
					</ul>
			</section>
		
		<!-- section start -->
		<section class="border mt-3 pt-4 pb-5"
					style="overflow: hidden;">
					
	<div class="card float-left ml-1 mb-1" style="width:400px;">
 		 <img class="card-img-top" alt="best1" src="${root}/resources/images/gym_newgen_01.jpg">
 		 <div class="card-body">
   	<h4 class="card-title">합정 크로스핏</h4>
    <p class="card-text">20000원</p>
    <a href="#" class="btn btn-primary">Go to Crossfit</a>
  		</div>
		</div>
		
		<div class="card float-left ml-1 mb-1" style="width:400px;">
 		 <img class="card-img-top" alt="best1" src="${root}/resources/images/gym_newgen_01.jpg">
 		 <div class="card-body">
   	<h4 class="card-title">합정 크로스핏</h4>
    <p class="card-text">20000원</p>
    <a href="#" class="btn btn-primary text-right">Go to Crossfit</a>
  		</div>
		</div>
		
		<div class="card float-left  ml-1 mb-1" style="width:400px;">
 		 <img class="card-img-top" alt="best1" src="${root}/resources/images/gym_newgen_01.jpg">
 		 <div class="card-body">
   	<h4 class="card-title">합정 크로스핏</h4>
    <p class="card-text">20000원</p>
    <a href="#" class="btn btn-primary text-right">Go to Crossfit</a>
  		</div>
		</div>
		
		<div class="card float-left  ml-1 mb-1" style="width:400px;">
 		 <img class="card-img-top" alt="best1" src="${root}/resources/images/gym_newgen_01.jpg">
 		 <div class="card-body">
   	<h4 class="card-title">합정 크로스핏</h4>
    <p class="card-text">20000원</p>
    <a href="#" class="btn btn-primary text-right">Go to Crossfit</a>
  		</div>
		</div>
			
		</section>
		<!-- section end -->
		
		
		
		
	
	</div>
	<div class="container clearfix">
	<%@ include file="../home_footer.jsp" %>
	</div>
	
</body>
</html>