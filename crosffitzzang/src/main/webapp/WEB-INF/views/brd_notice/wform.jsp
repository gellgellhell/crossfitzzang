<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지게시판쓰기</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://cdn.ckeditor.com/4.15.0/full/ckeditor.js"></script>
<%-- <script src="${root}/resources/ckeditor/ckeditor.js"></script> --%>
</head>
<body>
	<script type="text/javascript">
	$(document).ready(function() {
		$("#btn_write").click(function() {
			let cntsData = CKEDITOR.instances.cnts.getData();
			$.post(
				"${root}/brdnotice"
				,{
					title : $("#title").val()
					, writer : $("#writer").val()
					, pwd : $("#pwd").val()
					, cnts : cntsData
				}
				,function(data, status){
					//alert(data); alert(status);
					if(status == "success") {
						if(data == 1) {
							alert("글쓰기가 성공 하였습니다.");
							location.href="${root}/board/list";
						} else {
							alert("관리자에게 문의해 주세요.");
						}
					} else {
						alert("잠시 후 다시 시도해 주세요.");
					}
				}//function
			);//post
		});//click
		$("#btn_back").click(function() {
			location.href="${root}/board/list";
		});//click
	});//ready
	</script>
	<div class="container">
		<%@ include file="../home_header.jsp" %>
		<br>
		<h1 class="text-muted text-center mt-3 mb-3">
			공지게시판 쓰기 </h1>
			<hr>	
				<div>
				<label class="ml-1 font-weight-bold "> 제목 (*)</label>
					<input type="text" id="title" maxlength="50"
						class="form-control mb-1 ">
				</div>
				
				<div>
				<label class="ml-1 font-weight-bold"> 작성자 (*)</label>
					<input type="text" id="writer" maxlength="50"
						class="form-control mb-1 ">
				</div>
				
				<div>
				<label class="ml-1 font-weight-bold"> 비밀번호 (*)</label>
					<input type="password" id="pwd" maxlength="50"
						class="form-control mb-1 ">
				</div>
				
				<div>
				<label class="ml-1 font-weight-bold"> 내용 (*)</label>
					<textarea rows="10" cols="30" id="cnts"
						class="form-control"></textarea>
					<script>
					CKEDITOR.replace('cnts');
					</script>
				</div>
				<hr>
				
		<div class="text-right">
			<button type="button" id="btn_back"
				class="btn btn-dark mb-3">뒤로가기</button>
		
			<button type="button" id="btn_write"
				class="btn btn-dark mb-3"> 글 쓰기 </button>
		</div>
	</div>
		<%@ include file="../home_footer.jsp" %>
</body>
</html>





