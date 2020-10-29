<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 게시판</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<script type = "text/javascript">
	$(document).ready(function() {
		$.get(
			"${root}/brd_mbr/list"
			, {}//data
			, function(data, status) {
				$.each(data, function(index, dto) {
					$("tbody").append(
						"<tr>"
						+"<td>"+dto.bno+"</td>"
						+"<td>"
						+"<a href='${root}/brd_mbr/detail?bno="
						+dto.bno+"'>"+dto.title+"</a>"
						+"</td>"
						+"<td>"+dto.writer+"</td>"
						+"<td>"+dto.view_cnt+"</td>"
						+"<td>"+dto.write_date+"</td>"
						+"</tr>"
					);
				});
			}
		);

		$("#btn_wform").click(function() {
			location.href="${root}/brd_mbr/wform";
		});// click
	});// ready
	</script>
	<div class = "container">
		<%@ include file = "../home_header.jsp" %>
		<h1 class = "text-muted text-center mt-3 mb-3">
			공지게시판</h1>
			<div class = "text-right">
				<button class = "btn btn-primary mb-3"
					type = "button" id = "btn_wform"> W R I T E </button>
			</div>
		<table class = "table table-hover">
			<thead>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>작성일</th>
			</thead>
			<tbody>
			</tbody>
		</table>
	</div>
</body>
</html>










