<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<html>
<head>
	<title>Home</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class = "container">
<nav class="navbar navbar-expand-sm bg-danger navbar-dark rounded">
  <!-- 로고 시작 -->
  		<a class="navbar-brand ml-5" href="${root}">
    		<img src="${root}/resources/csf.png" alt="logo" style="width:70px;">
    	</a>	
  <!-- 로고 끝 -->
  <!-- 검색 창 시작 -->
  <form class="form-inline mr-auto ml-auto">
      		    <input class="form-control" style = "width:300px" type="text" placeholder=" SEARCH "">
        		<button class="btn btn-dark ml-2" type="submit">🔍</button>
  </form>
  <!--  검색창 끝 -->
  <!-- 로그인 회원가입 시작-->
  <ul class="navbar-nav ">
    <li class="nav-item">
      <a class="nav-link text-dark font-weight-bold" href="${root}">로그인</a>
    </li>
    <li class="nav-item">
      <a class="nav-link text-dark font-weight-bold" href="${root}">회원가입</a>
    </li>
    <li class="nav-item">
      <a class="nav-link text-dark font-weight-bold" href="${root}">아이디/비밀번호 찾기</a>
    </li>
  </ul>
</nav>
  <!--  로그인 회원가입 끝 -->
	<!-- nav start -->
		<nav class="navbar navbar-expand-sm bg-secondary rounded mt-1">
			<ul class="navbar-nav">
				
			<div class="dropdown">
					<a class="nav-link dropdown-toggle text-white font-weight-bold ml-3" data-toggle="dropdown">
					소개
					</a>
					<div class="dropdown-menu bg-secondary">
						<a class="dropdown-item text-white font-weight-bold" href="#">크로스핏 이란</a>
						<a class="dropdown-item text-white font-weight-bold" href="#">소개</a>
						<a class="dropdown-item text-white font-weight-bold" href="#">인삿말</a>
					</div>
			</div>
				
			<div class="dropdown">
					<a class="nav-link dropdown-toggle text-white font-weight-bold ml-3" data-toggle="dropdown">
					체육관 찾기
					</a>
					<div class="dropdown-menu bg-secondary">
						<a class="dropdown-item text-white font-weight-bold" href="#">내 주변 체육관</a>
						<a class="dropdown-item text-white font-weight-bold" href="#">추천 체육관</a>
						<a class="dropdown-item text-white font-weight-bold" href="#">실시간 맞춤 일정</a>
						<a class="dropdown-item text-white font-weight-bold" href="#">오늘의 추천 일정</a>
					</div>
			</div>
				
			<div class="dropdown">
					<a class="nav-link dropdown-toggle text-white font-weight-bold ml-3"  data-toggle="dropdown">
					게시판
					</a>
					<div class="dropdown-menu bg-secondary">
						<a class="dropdown-item text-white font-weight-bold" href="#">공지 게시판</a>
						<a class="dropdown-item text-white font-weight-bold" href="#">이벤트 게시판</a>
						<a class="dropdown-item text-white font-weight-bold" href="#">회원 게시판</a>
					</div>
			</div>
				
			<div class="dropdown">
					<a class="nav-link dropdown-toggle text-white font-weight-bold ml-3"  data-toggle="dropdown">
					INFO
					</a>
					<div class="dropdown-menu bg-secondary">
						<a class="dropdown-item text-white font-weight-bold" href="#">1대1 문의사항</a>
						<a class="dropdown-item text-white font-weight-bold" href="#">123</a>
						<a class="dropdown-item text-white font-weight-bold" href="#">456</a>
					</div>
			</div>
		</ul>
		</nav>
		
		<!-- nav end -->
</div>
</body>
</html>