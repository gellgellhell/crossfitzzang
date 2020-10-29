<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://cdn.ckeditor.com/4.15.0/full/ckeditor.js"></script>
</head>
<body>
	<script type="text/javascript">
	$(document).ready(function() {
		$.get(
"${root}/brd_mbr/detail/${bno}" //조회.
				, {} //bno
				, function(data, status) {
					$("#title").val(data.title);
					$("#writer").val(data.writer);
					$("#cnts").val(data.cnts);
				}//function //input에 data 넣기.
		);//get
	});//ready
	</script>
	<div class = "container">
		<%@ include file = "../home_header.jsp" %>
		<h1 class = "text-muted text-center mt-3 mb-3">
			공지게시판 수정 </h1>
		<table class = "table table-hover">
			<colgroup>
				<col width = "25%">
				<col width = "75%">
			</colgroup>
			<tr>
				<th class = "text-right">제목 (*)</th>
				<td>
					<input type = "text" id="title"
						class = "form-control"
						maxlength = "50">
				</td>
			</tr>
			<tr>
				<th class = "text-right">작성자 (*)</th>
				<td>
					<input type = "text" id="writer"
						class = "form-control"
						maxlength="10">
				</td>
			</tr>
			<tr>
				<th class = "text-right">비밀번호 (*)</th>
				<td>
					<input type = "password" id="pwd"
						class = "form-control"
						maxlength = "20">
				</td>
			</tr>
			<tr>
				<th class = "text-right">내용 (*)</th>
				<td>
					<textarea rows = "10" cols = "30" id = "cnts"
						class = "form-control"></textarea>
						<script>
						CKEDITOR.replace('cnts');
						</script>
				</td>
			</tr>
		</table>
		<div class = "text-right">
			<button type = "button" class = "btn btn-primary mb-5"
				id = "btn_update"> U P D A T E </button>
		</div>
	</div>
	<input type = "hidden" id = "bno" value = "${bno}">
	<script type = "text/javascript">
	$(document).ready(function() {
		$("#btn_update").click(function() {

			if( !confirm("정말 수정하시겠습니까?") ) {
				return;
			}

			if( $.trim( $("#title").val() ) == ""){
				alert("제목을 확인 해주세요.");
				return;
			}//title 빈값 체크
			if( $.trim( $("#writer").val() ) == ""){
				alert("작성자를 확인 해주세요.");
				return;
			}//writer 빈값 체크
			if( $.trim( $("#pwd").val() ) == ""){
				alert("비밀번호를 확인 해주세요.");
				return;
			}//pwd 빈값 체크
			let cntsData = CKEDITOR.instances.cnts.getData();
			if( $.trim(cntsData) == ""){
				alert("내용을 확인 해주세요.");
				return;
			}//cnts 빈값 체크

			$.ajax({
				type:"put"
				, contentType:"application/json"
				, url : "${root}/brd_mbr"
				, data : JSON.stringify({
					bno : $("#bno").val()
					, title : $("#title").val()
					, writer : $("#writer").val()
					, pwd : $("#pwd").val()
					, cnts : cntsData
				})
				, success : function(data, status) {
					if(data == 1) {
						alert("게시글이 수정 되었습니다.");
location.href = "${root}/brd_mbr/list"
					} else if(data == -1) {
						alert("비밀번호가 올바르지 않습니다.");
					} else {
						alert("관리자에게 문의해 주세요.");
					}
				}//function
			});//ajax
		});//click
	});//ready
	</script>
</body>
</html>










