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
<script src="https://cdn.ckeditor.com/4.15.0/full/ckeditor.js"></script>
</head>
<body>
	<div class="container">
		<%@ include file="../home_header.jsp" %>
		<h1 class="text-center text-muted mt-3 mb-3">
			회원 게시판 수정 </h1>
		<form id="wform" method="post"
			action="${pageContext.request.contextPath}/mbupdate">
			<div class="form-group">
				<label for="title">제목</label>
				<input type="text" class="form-control"
						id="title" name="title" maxlength="50"
						value="${board_dto.title}">
			</div>
			<div class="form-group">
				<label for="writer">작성자</label>
				<input type="text" class="form-control"
						id="writer" name="id" maxlength="50"
						readonly="readonly"
						value="${login_id_session}">
			</div>
			<div class="form-group">
				<label for="cnts">작성내용</label>
				<textarea rows="10" cols="30"
						id="cnts" name="cnts">${board_dto.cnts}</textarea>
				<script>
					CKEDITOR.replace('cnts');
				</script>
			</div>
			<input type="hidden"
				name="bno" value="${board_dto.bno}">
			<input type="hidden"
				name="mno" value="${board_dto.mno}">
		</form>
		<div class="text-right mb-3">
			<c:if test="${login_id_session == board_dto.id}">
				<button type="button" class="btn btn-primary"
					id="btn_update">UPDATE</button>
			</c:if>
		</div>
		<%@ include file="../home_footer.jsp" %>
	</div>
	<script type="text/javascript">
	$(document).ready(function() {
		$("#btn_update").click(function() {
			if( $.trim( $("#title").val() ) == "" ){
				alert("제목을 확인해 주세요.");
				return;
			}
			let ck = CKEDITOR.instances.cnts;
			if( ck.getData() == "" ){
				alert("내용을 확인해 주세요.");
				return;
			}
			$("#wform").submit();
		});//click
	});//ready
	</script>
</body>
</html>











