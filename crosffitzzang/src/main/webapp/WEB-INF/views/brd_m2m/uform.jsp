<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1문의게시판수정</title>
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
			"${root}/brdm2m/detail/${bno}" //조회.
			, {}
			, function(data, status) {
				$("#title").val(data.title);
				$("#writer").val(data.writer);
				$("#cnts").val(data.cnts);

				let tmp = data.up_file_path;
				if($.trim(tmp) != ""){
					tmp = tmp.substring(
						tmp.lastIndexOf("/") + 1, tmp.length);
					$("#td_file").html(
						tmp
						+" <button type='button' id='btn_file_del'"
						+" class='btn-small btn-danger'"
						+"> X </buttom>"
					);//html
					$("#btn_file_del").on("click", function() {
						btnFileDeleteClicked(data.up_file_path);
					});//on
					$("#file_btn").css("display", "none");
				} else {
					$("#file_show").css("display", "none");
				}
			}//function //input에 data 넣기.
		);//get
	});//ready
	function btnFileDeleteClicked(fileName) {
		$.get(
			"${root}/brdm2m/file_delete"
			, { bno : $("#bno").val()
				, up_file_path : fileName }
			, function(data, status) {
				if(data == "1"){
					$("#file_btn").css("display", "block");
					$("#file_show").css("display", "none");
				}
			}//function
		);//get
	}//btnFileDeleteClicked
	</script>
	<div class="container">
		<%@ include file="../home_header.jsp" %>
		<h1 class="text-muted text-center mt-3 mb-3">
			1:1 문의사항 수정 </h1>
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
			<button type="button" class="btn btn-dark mb-5"
				id="btn_back">뒤로가기</button>
			<button type="button" class="btn btn-dark mb-5"
				id="btn_update">수정하기</button>
		</div>
	</div>
	<input type="hidden" id="bno" value="${bno}">
	<script type="text/javascript">
	$(document).ready(function() {
		$("#btn_update").click(function() {

			if( !confirm("정말 수정하시겠습니까?") ) {
				return;
			}//update

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
				, url : "${root}/brdm2m"
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
location.href="${pageContext.request.contextPath}/m2m/list"
					} else if(data == -1) {
						alert("비밀번호가 올바르지 않습니다.");
					} else {
						alert("관리자에게 문의해 주세요.");
					}
				}//function
			});//ajax
		});//click
		$("#btn_back").click(function() {
			location.href="${root}/m2m/detail?bno=827";
		});//click
	});//ready
	</script>
	<%@ include file="../home_footer.jsp" %>
</body>
</html>










