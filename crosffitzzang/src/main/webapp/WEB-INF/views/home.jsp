<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style> .carousel-inner img {width: 100%; height: 100%;} </style>
<script type="text/javascript">
$(document).ready(function() {
	
	$("#service").click(function() {
		alert("전화문의 02-0000-0000 ");
	});//click
	
	$("#license").click(function() {
		alert("미치다: 사업자등록번호 111-11-00000 ");
	});//click
	

});//ready
</script>
</head>
<body data-spy="scroll" data-target=".navbar">
		
<div class = "container">
	<%@ include file="./home_header.jsp" %>

<div id="demo" class="carousel slide float-left w-75 mb-2" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
    <li data-target="#demo" data-slide-to="3"></li>
  </ul>
  
  <!-- 슬라이드쇼 시작 -->
  <section class="carousel-inner">
    <div class = "carousel-item active">
    	<a href = "${root}/gym/view">
      		<img src = "${root}/resources/Rgym/Rgym1.jpg" alt = "Rgym1" width = "600" height = "300">
     	</a>
    </div>
    
    <div class="carousel-item">
    	<a href = "${root}/gym/view">
      		<img src = "${root}/resources/Rgym/Rgym2.jpg" alt = "Rgym2" width = "600" height = "300">
    	</a>
    </div>
    
    <div class = "carousel-item">
    	<a href = "${root}/gym/view">
      		<img src = "${root}/resources/Rgym/Rgym3.jpg" alt = "Rgym3" width = "600" height = "300">
   		</a>
    </div>
    
    <div class = "carousel-item">
    	<a href = "${root}/gym/view">
			<img src = "${root}/resources/Rgym/Rgym4.jpg" alt = "Rgym4" width = "600" height = "300">	
    	</a>
    </div>
	</section>
	<!-- 슬라이드쇼 끝 -->
  
  <!-- 좌우 변경 -->
	<a class="carousel-control-prev" href="#demo" data-slide="prev">
		<span class="carousel-control-prev-icon"></span>
	</a>
	<a class="carousel-control-next" href="#demo" data-slide="next">
		<span class="carousel-control-next-icon"></span>
	</a>
</div>

<!-- 실시간 스케쥴 시작 -->
	<aside class = "float-right w-25">
		<div class="card">
			<div class="card-body text-center" >
				<a href= "#">
					<h2><Strong> 크로스핏 칸 </Strong></h2>
					<h4>참여인원 5/6</h4>
				</a>
			</div>
		</div>
		<div class="card">
			<div class="card-body text-center" >
				<a href= "#">
					<h2><Strong> 목동 크로스핏 </Strong></h2>
					<h4>참여인원 2/4</h4>
				</a>
			</div>
		</div>
		<div class="card">
			<div class="card-body text-center" >
				<a href= "#">
					<h2><Strong> 크로스핏 리까 </Strong></h2>
					<h4>참여인원 5/8</h4>
				</a>
			</div>
		</div>
		<div class="card">
			<div class="card-body text-center" >
				<a href= "#">
					<h2><Strong> 크로스핏 밤 </Strong></h2>
					<h4>참여인원 1/4</h4>
				</a>
			</div>
		</div>
	</aside>

<!--  실시간 스케줄 끝 -->
<h1 class = "text-center w-100">특가 이벤트 운동에미치다 추천 체육관</h1>

	<div class="w3-row">
<div class="w3-col s4">
	<img src = "${root}/resources/csf1.jpg" style="width:100%">
    </div>
    <div class="w3-col s4">
      <img src = "${root}/resources/csf1.jpg" style="width:100%">
    </div>
    <div class="w3-col s4">
      <img src = "${root}/resources/csf1.jpg" style="width:100%">
    </div>
  </div>

</div>


	<%@ include file="./home_footer.jsp" %>
	
	
</body>
</html>	