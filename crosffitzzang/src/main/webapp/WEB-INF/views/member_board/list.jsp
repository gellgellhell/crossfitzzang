<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 게시판</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container">
		<%@ include file="../home_header.jsp" %>
		<h1 class="text-muted mt-3 mb-3 text-center">
			회원 게시판 목록 </h1>

		<c:if test="${login_id_session != null
						&& login_id_session.length() > 0}">
			<div class="text-right mb-3">
				<a href="${pageContext.request.contextPath}/mbwform">
					<button type="button" class="btn btn-primary">
						글 쓰러 가기 </button>
				</a>
			</div>
		</c:if>

		<table class="table table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>조회수</th>
					<th>작성일자</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="dto" items="${board_list}">
					<tr>
						<td>${dto.bno}</td>
<td>
	<a href="${pageContext.request.contextPath}/mbdetail?bno=${dto.bno}">
		${dto.title}</a>
</td>
						<td>${dto.id}</td>
						<td>${dto.view_cnt}</td>
						<td>${dto.write_date}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<%@ include file="../home_footer.jsp" %>
	</div>
</body>
</html>




