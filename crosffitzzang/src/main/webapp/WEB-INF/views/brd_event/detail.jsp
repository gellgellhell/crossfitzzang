<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 이벤트 게시판 </title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<script type="text/javascript">
	$(document).ready(function() {
		$.get(
			"#"
			, {}
			, function(data, status) {
				//alert(data); alert(status);
				$("#bno").val(data.bno);
				$("#td_title").text(data.title);
				$("#td_writer").text(data.writer);
				$("#td_like_cnt").text(data.like_cnt);
				$("#td_unlike_cnt").text(data.unlike_cnt);
				$("#td_cnts").text(data.cnts);
				viewHanjul();
			}//function
		);//get

		$(".fa-heart, .fa-heartbeat").click(function() {
			let cname = event.target.getAttribute("class");
			let whoClick = "beat";
			if(cname.indexOf("beat") == -1) {
				whoClick = "heart";
			}
			$.ajax({
				url : "#/"+whoClick
				, type : "put"
				, success : function(data, status) {
					if(data > 0) {
						if(whoClick == "heart") {
							$("#td_like_cnt").text(
									parseInt( $("#td_like_cnt").text() )+1
							);
						} else if(whoClick == "beat") {
							$("#td_unlike_cnt").text(
									parseInt( $("#td_unlike_cnt").text() )+1
							);
						}
					}//if
				}//success
			});//ajax
		});//click
	});//ready
	</script>
	<script type="text/javascript">
	$(document).ready(function() {
		$("#btn_delete").click(function() {

			if( !confirm("정말 삭제 하시겠습니까?") ) {
				return;
			}

			if( $.trim( $("#pwd").val() ) == "" ){
				alert("비밀번호를 입력해 주세요.");
				return;
			}

			$.ajax({
				type : "delete"
				, contentType : "application/json"
				, url : "#"
				, data : JSON.stringify({
							bno : $("#bno").val()
							, pwd : $("#pwd").val()
				})
				, success : function(data, status) {
					//alert(data);
					if(data == 1) {
						alert("게시글이 삭제 되었습니다.");
location.href="#";
					} else if(data == -1) {
						alert("비밀번호가 올바르지 않습니다.");
					} else {
						alert("관리자에게 문의 바랍니다.");
					}
				}//function
			});//ajax
		});//click

		$("#btn_wform").click(function() {
location.assign(
	"#?bno="
		+ $("#bno").val()
);//assign
		});//click

	});//ready
	</script>
	<div class="container">
		<%@ include file="../home_header.jsp" %>
		<h1 class="text-muted text-center mt-3 mb-3">
			이벤트게시판 상세보기	</h1>
		<div class="form-inline mb-3 float-right">
			<input type="hidden" id="bno">
			<input type="text" id="pwd"
				class="form-control mr-1"
				placeholder="input password for delete">
			<button type="button" id="btn_delete"
				class="btn btn-danger mr-1">
				D E L E T E </button>
			<button type="button" id="btn_wform"
				class="btn btn-primary">
				U P D A T E </button>
		</div>
		<table class="table table-hover mb-5">
			<colgroup>
				<col width="25%">
				<col width="75%">
			</colgroup>
			<tr>
				<th class="text-right">제목</th>
				<td id="td_title"></td>
			</tr>
			<tr>
				<th class="text-right">작성자</th>
				<td id="td_writer"></td>
			</tr>
			<tr>
				<th class="text-right">좋아요 <i class="fa fa-heart"></i></th>
				<td id="td_like_cnt"></td>
			</tr>
			<tr>
				<th class="text-right">싫어요 <i class="fa fa-heartbeat"></i></th>
				<td id="td_unlike_cnt"></td>
			</tr>
			<tr>
				<th class="text-right">내용</th>
				<td id="td_cnts"></td>
			</tr>
		</table>
		<!-- 한줄 댓글 달기 start -->
		<table class="table table-hover mt-5 mb-5">
			<colgroup>
				<col width="20%">
				<col width="50%">
				<col width="15%">
				<col width="15%">
			</colgroup>
			<thead>
				<tr>
					<th>작성자</th>
					<th>댓글</th>
					<th>비밀번호</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						<input class="form-control"
								maxlength="20"
								id="writerTxt" type="text">
					</td>
					<td>
						<input class="form-control"
								maxlength="100"
								id="cntsTxt" type="text">
					</td>
					<td>
						<input class="form-control"
								maxlength="20"
								id="pwdTxt" type="text">
					</td>
					<td>
						<button type="button" id="btn_hanjul"
								class="btn btn-primary">
								댓 글 달 기
						</button>
					</td>
				</tr>
			</tbody>
			<tfoot id="reply_area">
			</tfoot>
		</table>
		<script type="text/javascript">
		$(document).ready(function() {
			$("#btn_hanjul").click(function() {
				$.post(
					"${root}/brd_event/insHanjul"
					, {
						bno : $("#bno").val()
						, writer : $("#writerTxt").val()
						, cnts : $("#cntsTxt").val()
						, pwd : $("#pwdTxt").val()
					}
					, function(data, status) {
						if(status == "success") {
							if(data > 0) {
								viewHanjul();
							} else {
								alert("관리자에게 문의하세요.");
							}
						} else {//status == fail
							alert("서버가 응답하지 않습니다.");
						}
					}//function
				);//post
			});//click
		});//ready
		</script>
	<!-- 한줄 댓글 달기 end -->
	<!-- 한줄 댓글 보기 start -->
	<script type="text/javascript">
	function viewHanjul() {
		$.get(
			"#"
			, { bno : $("#bno").val() }
			, function(data, status) {
				if(status == "success") {
					$("#reply_area").empty();
					$.each(data, function(index, dto) {
						$("#reply_area").append(
							"<tr>"
							+"<td>"+dto.writer+"</td>"
							+"<td>"+dto.cnts+"</td>"
							+"<td></td>"
							+"<td></td>"
							+"</tr>"
						);
					});//each
				} else {
					alert("서버가 응답하지 않습니다.");
				}
			}//function
		);//get
	}//viewHanjul
	</script>
	<!-- 한줄 댓글 보기 end -->
	</div>
</body>
</html>












