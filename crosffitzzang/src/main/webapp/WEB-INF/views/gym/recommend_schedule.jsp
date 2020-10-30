<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘의 추천 일정</title>
<meta name="viewport" content="width=1080px,maximum-scale=2.0,minimum-scale=0.4,user-scalable=yes">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
		<div class="container">
		<%@ include file="../home_header.jsp" %>
		</div>
		
		<div class="container mt-3">
			<h1 class="text-muted text-center mt-3 mb-3"> 오늘의 추천 일정</h1>
			
			<table class="table table-bordered" style=" height:400px;">
    <thead class="thead-dark">
      <tr>
        <th>어제 추천 일정(2020.10.28)</th>
        <th>오늘 추천 일정(2020.10.29)</th>
        <th>내일 추천 일정(2020.10.30)</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>여기에</td>
        <td>일정을</td>
        <td>넣읍시다</td>
      </tr>
      <tr>
        <td>데이터베이스에</td>
        <td>일정넣고</td>
        <td>If문을 돌려서 만들던지</td>
      </tr>
      <tr>
        <td>가라로</td>
        <td>당일당일 입력하는식으로할지</td>
        <td>능력에따라 만들어봅시다</td>
      </tr>
    </tbody>
  </table>
			
			<%@ include file="../home_footer.jsp" %>
		</div>
		
		
</body>
</html>