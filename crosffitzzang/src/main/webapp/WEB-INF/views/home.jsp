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
</head>
<body>
		<%@ include file="./home_header.jsp" %>
<div class = "container">

<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
    <li data-target="#demo" data-slide-to="3"></li>
  </ul>
  
  <!-- The slideshow -->
  <section class="carousel-inner">
    <div class = "carousel-item active">
    	<a href = "#">
      		<img src = "${root}/resources/Rgym/Rgym1.jpg" alt = "Rgym1" width = "600" height = "300">
     	</a>
    </div>
    
    <div class="carousel-item">
    	<a href = "#">
      		<img src = "${root}/resources/Rgym/Rgym2.jpg" alt = "Rgym2" width = "600" height = "300">
    	</a>
    </div>
    
    <div class = "carousel-item">
    	<a href = "#">
      		<img src = "${root}/resources/Rgym/Rgym3.jpg" alt = "Rgym3" width = "600" height = "300">
   		</a>
    </div>
    
    <div class = "carousel-item">
    	<a href = "#">
			<img src = "${root}/resources/Rgym/Rgym4.jpg" alt = "Rgym4" width = "600" height = "300">	
    	</a>
    </div>
  </section>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>

<aside>
<article>123</article>
<article>123</article>
<article>123</article>

</aside>

  <h2 class = "text-center">특가 이벤트</h2>

  <div class="w3-row">
    <div class="w3-col s4">
      <img src = "${root}/resource/csf1.jpg" style="width:100%">
    </div>
    <div class="w3-col s4">
      <img src = "${root}/resources/csf1.jpg" style="width:100%">
    </div>
    <div class="w3-col s4">
      <img src = "${root}/resources/csf1.jpg" style="width:100%">
    </div>
  </div>
	<%@ include file="./home_footer.jsp" %>
  	</div>	
	
</body>
</html>	