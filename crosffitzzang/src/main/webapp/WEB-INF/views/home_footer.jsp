<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!-- home_footer start -->

<div class = "container">

<footer class="jumbotron bg-secondary mt-1 clearfix">
	
	<div class="col-lg-2 col-md-6 col-sm-12 float-left">
		<div class="card-body text-white">
			<a id="license" href = "${root}/"> 사업자등록번호 </a>
		</div>
	</div>
	<div class="col-lg-2 col-md-6 col-sm-12 float-left">
		<div class="card-body text-white">
			<a href = "${root}/fdetail1"> 이용약관 </a>
		</div>
	</div>
	<div class="col-lg-3 col-md-6 col-sm-12 float-left">
		<div class="card-body text-white">
			<a href = "${root}/fdetail2"> 개인정보처리방침 </a>
		</div>
	</div>
	<div class="col-lg-3 col-md-6 col-sm-12 float-left">
		<div class="card-body text-white">
			<a href = "${root}/fdetail3"> 위치정보이용약관 </a>
		</div>
	</div>
	<div class="col-lg-2 col-md-6 col-sm-12 float-left">
		<div class="card-body text-white">
			<a id="service" href = "${root}/m2m/list"> 문의하기 </a>
		</div>
	</div>
</footer>
</div>
<!-- home_footer end -->
