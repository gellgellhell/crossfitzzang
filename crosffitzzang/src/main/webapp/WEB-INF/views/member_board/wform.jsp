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
		<h1 class="text-center mt-3 mb-3 text-muted">
			회원 게시판 쓰기</h1>
		<form id="wform" method="post"
			action="${pageContext.request.contextPath}/mbwrite">
			<div class="form-group">
				<label for="title">제목</label>
				<input type="text" class="form-control"
						id="title" name="title"
						maxlength="50">
			</div>
			<div class="form-group">
				<label for="writer">작성자</label>
				<input type="text" class="form-control"
						id="writer" name="id"
						value="${login_id_session}"
						readonly="readonly">
			</div>
			<div class="form-group">
				<label for="cnts">내용</label>
				<textarea rows="10" cols="30"
					class="form-control"
					id="cnts" name="cnts"></textarea>
				<script>
					CKEDITOR.replace('cnts');
				</script>
			</div>
		</form>
		<div class="text-right mb-3">
			<button type="button" class="btn btn-danger"
					id="btn_list">LIST</button>
			<button type="button" class="btn btn-primary"
					id="btn_write">WRITE</button>
		</div>
		<%@ include file="../home_footer.jsp" %>
	</div>
	<script type="text/javascript">
	$(document).ready(function() {
		$("#btn_list").click(function() {
			location.assign("${pageContext.request.contextPath}/mblist");
		});

		$("#btn_write").click(function() {
			if( $.trim( $("#title").val() ) == "" ) {
				alert("제목을 확인 하세요.");
				return;
			}
			let ck = CKEDITOR.instances.cnts;
			if(ck.getData() == "") {
				alert("내용을 확인 하세요.");
				return;
			}
			$("#wform").submit();
		});//click
	});//ready
	</script>
</body>
</html>












