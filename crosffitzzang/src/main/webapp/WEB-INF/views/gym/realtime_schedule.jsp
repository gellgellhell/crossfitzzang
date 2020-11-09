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
	<%@ include file="../home_header.jsp" %>
		<div class="container mt-3">
			<table class="table table-bordered" style=" height:400px;">
    <thead class="thead-dark">
      <tr>
       <c:forEach var="list3" items="${board_list3}">
        
        <th>어제 추천 일정(2020.10.28)</th>
        	시발
        <th>오늘 추천 일정(2020.10.29)</th>
        <th>내일 추천 일정(2020.10.30)</th>
            <tr>
        		<td>
        		<div>
        			${list3.bno }
        			${list3.address3}
        			${list3.location}
        			${list3.tell3 }
        		</div>

			</tr>
        </c:forEach>
      </tr>
    </thead>
    <tbody>
    </tbody>
  </table>
			
			<%@ include file="../home_footer.jsp" %>
		</div>
		
		
</body>
</html>