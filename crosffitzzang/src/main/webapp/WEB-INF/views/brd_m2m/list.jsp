<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1대1 문의사항</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	
	<div class="container">
		<%@ include file="../home_header.jsp" %>
		<br>
		<h1 class="text-muted text-center mt-3 mb-3">1 : 1 문의사항</h1>
		<hr>
		
			<!-- search start -->
		<ul class="pagination justify-content-center mt-5 mb-5">
			<li class="mr-1">
				<select id="search_option" class="form-control">
					<option value="title"
		<c:if test="${search_dto.search_option == 'title'}">
			selected="selected"
		</c:if>
					> 제 목 </option>
					<option value="writer"
		<c:if test="${search_dto.search_option == 'writer'}">
			selected="selected"
		</c:if>
					> 작 성 자 </option>
				</select>
			</li>
			<li class="mr-1">
				<input	type="text" id="search_word"
						value="${search_dto.search_word}"
						class="form-control">
			</li>
			<li>
				<button type="button" id="btn_search"
						class="btn btn-dark"> 검색 </button>
			</li>
		</ul>
		<script type="text/javascript">
		
		$(document).ready(function() {
		
			$("#btn_search").click(function() {
				location.href="${root}/m2m/list"
					+"?search_option="+$("#search_option").val()
					+"&search_word="+$("#search_word").val()
			});//click
			$("#search_word").keyup(function() {
				if(event.keyCode == 13){
					$("#btn_search").click();
				}
			});//keyup
			
			$("#btn_wform").click(function() {
				if( $.trim ( "${login_dto.mno}" ) == "") {
					alert("로그인 후 이용해 주세요.");
				}else{
				location.href="${root}/m2m/wform";
				}
			});//click
		});//ready
		
		</script>
		<!-- search end -->
		<table class="table table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>조회수</th>
					<th>작성일</th>
				</tr>
			</thead>
			<c:forEach var="dto" items="${board_list}">
				<tr>
					<td>${dto.bno}</td>
					<td>
					<a href="${pageContext.request.contextPath}/m2m/detail?bno=${dto.bno}">
					${dto.title}
					</a>
					</td>
					<td>${dto.writer}</td>
					<td>${dto.view_cnt}</td>
					<td>${dto.write_date}</td>
				</tr>
			</c:forEach>
		</table>

		<!-- paging start -->
		
		<c:set var="search_uri1"
			value="&search_option=${search_dto.search_option}" />
		<c:set var="search_uri2"
			value="&search_word=${search_dto.search_word}" />
	
		<ul class="pagination justify-content-center">
<c:if test="${beginPage > 10}">
<li class="page-item">
	<a class="page-link"
		href="${root}/m2m/list?reqPage=${beginPage-1}${search_uri1}${search_uri2}">
		Before
	</a>
</li>
</c:if>

<c:forEach var="page_num"
					begin="${beginPage}" end="${endPage}">
<li class="page-item">
	<a class="page-link"
		href="${root}/m2m/list?reqPage=${page_num}${search_uri1}${search_uri2}">
		${page_num}
	</a>
</li>
</c:forEach>

<c:if test="${endPage < maxPage}">
<li class="page-item">
	<a class="page-link "
		href="${root}/m2m/list?reqPage=${endPage+1}${search_uri1}${search_uri2}">
		Next
	</a>
</li>
</c:if>
		</ul>
		<!-- paging end -->
		
		<hr>
				<div class="text-right">
			<button class="btn btn-dark"
				type="button" id="btn_wform"> 글 쓰기 </button>
		</div>
	<br>
	</div>
	<%@ include file="../home_footer.jsp" %>
</body>
</html>










