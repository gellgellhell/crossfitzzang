<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!-- login modal start -->
<div class="modal" id="login_modal">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<!-- modal header -->
			<div class="modal-header">
				<h4>LogIn</h4>
				<button type="button"
						class="close"
						data-dismiss="modal">&times;</button>
			</div>
			<!-- modal body -->
			<div class="modal-body">
					<div class="form-group">
						<label for="login_mbr_userid">아이디</label>
						<input class="form-control"
							type="text" id="login_mbr_userid">
					</div>
					<div class="form-group">
						<label for="login_mbr_pwd">비밀번호</label>
						<input class="form-control"
							type="password" id="login_mbr_pwd">
					</div>
			</div>
			<!-- modal footer -->
			<div class="modal-footer">
				<button type="button" id="btn_login"
						class="btn btn-danger text-dark">로그인</button>
				<button type="button"
						class="btn btn-danger text-dark"
						data-dismiss="modal">취소</button>
			</div>
			<ul>
			<li class="label ">
				<a href = "${root}/id_find_form"><span class = "text-dark"> 아이디 찾기 </span></a>
			</li>
			
			<li class="label mb-2">
				<a href = "${root}/pwd_find_form"><span class = "text-dark"> 비밀번호 찾기 </span></a>
			</li>
			
			</ul>
		</div>
	</div>
</div>
<script>
$(document).ready(function() {
	$("#login_mbr_pwd").keyup(function() {
		if(event.keyCode == 13) {
			$("#btn_login").click();
		}//if
	});//keyup

	$("#btn_login").click(function() {
		if( $.trim( $("#login_mbr_userid").val() ) == "" ) {
			alert("Check Your Id.");
			return;//return 혼자 사용되면, 진행 중지!
		}//if
		if( $.trim( $("#login_mbr_pwd").val() ) == "" ) {
			alert("Check Your Password.");
			return;//return 혼자 사용되면, 진행 중지!
		}//if
		$.get(
			"${root}/inout/in"
			, {
				mbr_userid : $("#login_mbr_userid").val()
				, mbr_pwd : $("#login_mbr_pwd").val()
			}
			, function(data, status) {
				if(data == -1) {
					alert("아이디가 없습니다.\n회원 가입을 해 주세요.");
				} else if(data == -2) {
					alert("비밀번호가 올바르지 않습니다.");
				} else if(data > 0){
					alert("로그인 되었습니다.");
					location.reload();
				}
			}//function
		);//get
	});//click
	$("#btn_logout").click(function() {
		$.get(
				"${pageContext.request.contextPath}/inout/out"
				, {}
				, function(data, status) {
					if(data == 1){
						alert("로그아웃 되었습니다.");
						location.reload();
					}
				}//function
		);//get
	});//click
});//ready
</script>
<!-- login modal end -->


















