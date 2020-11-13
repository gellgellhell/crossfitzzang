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
	<table class="table table-bordered" style=" height:400px;">
    	<thead class="thead-dark">
			<tr>
				<th>어제 추천 일정(2020.11.12)</th>
				<th>오늘 추천 일정(2020.11.13)</th>
				<th>내일 추천 일정(2020.11.14)</th>
			</tr>
		</thead>
		
		<tbody class="table table-hover tbody-gray">
			<tr>
				<td><h2>크로스핏 밤</h2>
				<h5>- 18:00 ~ 19:00</h5>
				<h5>- Single DB Split Jerk 8 8 </h5>
				<h5>- Single DB Good morning Excercise 10 </h5>
				<a href="${root}/gym/view" class="btn btn-primary text-right">Go to Crossfit</a>
				</td>
				<td><h2>뉴트로젠</h2>
				<h5>- 18:00 ~ 19:00</h5>
				<h5>- Shoulder To Overhead ( Split Jerk 를 메인으로 )</h5>
				<h5>- 함께하는 줄타기</h5>
				<a href="${root}/gym/view" class="btn btn-primary text-right">Go to Crossfit</a>
				</td>
				<td><h2>My CrossFit</h2>
				<h5>- 18:00 ~ 19:00</h5>
				<h5>- 10R E90MOM - 라운드별 교체</h5>
				<h5>- 함께하는 줄타기</h5>
				<a href="${root}/gym/view" class="btn btn-primary text-right">Go to Crossfit</a>
				</td>
			</tr>
			
			<tr>
				<td><h2>크로스핏 밤</h2>
				<h5>- 19:00 ~ 20:00</h5>
				<h5>- Good moring Excercise & SQ </h5>
				<h5>- 2round of 50% 10 Back SQ 10sec hold x 2Sets  </h5>
				<a href="${root}/gym/view" class="btn btn-primary text-right">Go to Crossfit</a>
				</td>
				<td><h2>크로스핏 밤</h2>
				<h5>- 19:00 ~ 20:00</h5>
				<h5>- 박스 크로스핏</h5>
				<h5>- 4R 40Sec on 20sec Rest</h5>
				<a href="${root}/gym/view" class="btn btn-primary text-right">Go to Crossfit</a>
				</td>
				<td><h2>크로스핏 밤</h2>
				<h5>- 19:00 ~ 20:00</h5>
				<h5>-  * For time Record WOD</h5>
				<h5>-  15 Thruster, 15/12kcal ROW</h5>
				<a href="${root}/gym/view" class="btn btn-primary text-right">Go to Crossfit</a>
				</td>
			</tr>
      
      		<tr>
      			<td><h2>크로스핏 밤</h2>
				<h5>- 20:00 ~ 21:00</h5>
				<h5>- 20min amrap team of 2</h5>
				<h5>- Row 130kcal or Assualt bike 100kcal</h5>
				<a href="${root}/gym/view" class="btn btn-primary text-right">Go to Crossfit</a>
				</td>
      			<td><h2>크로스핏 밤</h2>
				<h5>- 20:00 ~ 21:00</h5>
				<h5>* E1 Strength Program</h5>
				<h5>- Back Squat 20(빈바) - 10 - 8 - 5 - 1 - 1</h5>
				<a href="${root}/gym/view" class="btn btn-primary text-right">Go to Crossfit</a>
				</td>
      			<td><h2>크로스핏 밤</h2>
				<h5>- 20:00 ~ 21:00</h5>
				<h5>- 21min amrap team of 2</h5>
				<h5>-  - Battle rope 1min & Row 28kcal  </h5>
				<a href="${root}/gym/view" class="btn btn-primary text-right">Go to Crossfit</a>
				</td>
      		</tr>
		</tbody>
	</table>
	<%@ include file="../home_footer.jsp" %>
</div>		
		
</body>
</html>