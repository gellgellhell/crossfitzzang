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
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<div class = "container">
<nav class = "navbar navbar-expand-sm bg-danger navbar-dark rounded">
  <!-- 로고 시작 -->
  		<a class="navbar-brand ml-5" href="${root}">
    		<img src="${root}/resources/csf.png" alt="logo" style="width:70px;">
    	</a>	
  <!-- 로고 끝 -->
  <!-- 검색 창 시작 -->
  <form class="form-inline mr-auto ml-auto">
      		    <input class="form-control" style = "width:300px" type="text" placeholder=" SEARCH ">
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
		<nav class="navbar navbar-expand-sm bg-secondary rounded mt-1 mb-1">
			<div class="navbar-nav">
					<div class="w3-dropdown-hover">
  						  <button class="w3-button bg-secondary text-white font-weight-bold">소개</button>
  							  <div class="w3-dropdown-content w3-bar-block w3-border">
  								      <a href="${root}/introduce/introduce1" class="w3-bar-item w3-button">크로스핏이란</a>
  							          <a href="${root}/introduce/introduce1" class="w3-bar-item w3-button">소개</a>
    								  <a href="${root}/introduce/map" class="w3-bar-item w3-button">오시는 길</a>
                              </div>
                      </div>
					<div class="w3-dropdown-hover">
  						  <button class="w3-button bg-secondary text-white font-weight-bold">체육관 찾기</button>
  							  <div class="w3-dropdown-content w3-bar-block w3-border">
  								      <a href="${root}/gym/neargym" class="w3-bar-item w3-button">내 주변 체육관</a>
  							          <a href="${root}/gym/recommend_gym" class="w3-bar-item w3-button">추천 체육관</a>
    								  <a href="${root}/gym/realtime_schedule" class="w3-bar-item w3-button">실시간 맞춤 일정</a>
    								  <a href="${root}/gym/recommend_schedule" class="w3-bar-item w3-button">오늘의 추천 일정</a>
                              </div>
                      </div>
					<div class="w3-dropdown-hover">
  						  <button class="w3-button bg-secondary text-white font-weight-bold">게시판</button>
  							  <div class="w3-dropdown-content w3-bar-block w3-border">
  								      <a href="${root}/board/list" class="w3-bar-item w3-button">공지 게시판</a>
  							          <a href="${root}/list/event" class="w3-bar-item w3-button">이벤트 게시판</a>
    								  <a href="${pageContext.request.contextPath}/mblist" class="w3-bar-item w3-button">회원 게시판</a>
                              </div>
                      </div>
					<div class="w3-dropdown-hover">
  						  <button class="w3-button bg-secondary text-white font-weight-bold">INFO</button>
  							  <div class="w3-dropdown-content w3-bar-block w3-border">
  								      <a href="${root}/info/man2man" class = "w3-bar-item w3-button">1대1 문의사항</a>
  							          <a href="${root}/info/qna" class = "w3-bar-item w3-button"> 질문 및 건의사항 </a>
    								  <a href="${root}/info/mypage" class = "w3-bar-item w3-button">MYPAGE</a>
                              </div>
                      </div>
					</div>
		</nav>
		
		<!-- nav end -->
</div>
</body>
</html>