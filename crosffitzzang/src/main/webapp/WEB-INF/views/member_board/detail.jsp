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
			회원 게시판 상세 보기 </h1>
		<table class="table">
			<tbody>
				<tr>
					<th>제목</th>
					<td colspan="7">${board_dto.title}</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${board_dto.id}</td>
					<th>작성일자</th>
					<td>${board_dto.write_date}</td>
					<th>조회수</th>
					<td>${board_dto.view_cnt}</td>
					<th>
						<button type="button" id="btn_like"
							class="btn-sm btn-warning">좋아요</button>
					</th>
					<td>${board_dto.like_cnt}</td>
				</tr>
				<tr>
					<th>작성내용</th>
					<td colspan="7">${board_dto.cnts}</td>
				</tr>
			</tbody>
		</table>
		<div class="text-right mb-3">
			<button type="button" class="btn btn-secondary"
					id="btn_back">Back</button>
			<c:if test="${login_id_session == board_dto.id}">
				<a href="${pageContext.request.contextPath}/mbdelete?bno=${board_dto.bno}">
					<button type="button" class="btn btn-danger"
							id="btn_delete">Delete</button>
				</a>
				<a href="${pageContext.request.contextPath}/mbuform?bno=${board_dto.bno}">
					<button type="button" class="btn btn-primary"
							id="btn_update">Update</button>
				</a>
			</c:if>
		</div>
		<%@ include file="../home_footer.jsp" %>
		<script type="text/javascript">
			$(document).ready(function() {
				$("#btn_back").click(function() {
					//history.back();
					location.href = "${pageContext.request.contextPath}/mblist";
				});//click
				$("#btn_like").click(function() {
					location.assign("${pageContext.request.contextPath}/mblike?bno=${board_dto.bno}");
				});//click
			});//ready
		</script>
	</div>
</body>
</html>
