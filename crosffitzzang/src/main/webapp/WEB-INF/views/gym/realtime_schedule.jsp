<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실시간</title>
<meta name="viewport" content="width=1080px,maximum-scale=2.0,minimum-scale=0.4,user-scalable=yes">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	<%@ include file="../home_header.jsp" %>
	<table class="table table-bordered" style=" height:400px;">
    	<thead class="thead-dark">
			<tr>
				<th>오늘의 실시간 일정(2020.11.13)</th>
				<th>내일의 실시간 일정(2020.11.14)</th>
			</tr>
		</thead>
		
		<tbody class="table table-hover tbody-gray">
			<tr>
				<td><h2>크로스핏 스팀펑크</h2>
				<h5>- 18:00 ~ 19:00</h5>
				<h5>- 박스 크로스핏</h5>
				<h5>- 인원 : 2/10</h5>
				<a href="${root}/gym/view" class="btn btn-primary text-right">Go to Crossfit</a>
				</td>
				<td><h2>크로스핏 슈퍼밤</h2>
				<h5>- 17:00 ~ 18:00</h5>
				<h5>- 박스 크로스핏</h5>
				<h5>- 인원 : 3/5</h5>
				<a href="${root}/gym/view" class="btn btn-primary text-right">Go to Crossfit</a>
				</td>

			</tr>
			
			<tr>
				<td><h2>크로스핏 밤</h2>
				<h5>- 19:00 ~ 20:00</h5>
				<h5>- 박스 크로스핏</h5>
				<h5>- 인원 : 1/7</h5>
				<a href="${root}/gym/view" class="btn btn-primary text-right">Go to Crossfit</a>
				</td>
				<td><h2>맞춤 크로스핏</h2>
				<h5>- 21:00 ~ 22:00</h5>
				<h5>- 박스 크로스핏</h5>
				<h5>- 인원 : 4/5</h5>
				<a href="${root}/gym/view" class="btn btn-primary text-right">Go to Crossfit</a>
				</td>
			
			</tr>
		</tbody>
	</table>
	<%@ include file="../home_footer.jsp" %>
</div>		
</body>
</html>