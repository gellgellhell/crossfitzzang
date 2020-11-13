<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=1080px,maximum-scale=2.0,minimum-scale=0.4,user-scalable=yes">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="${root}/resources/jsfile/addr.js"></script>>
</head>
<body data-spy="scroll" data-target="#div1" data-offset="50">
<div class="container" id="div1">
	<%@ include file="../home_header.jsp" %>	
  <div class="row mt-3">
    <div class="col-sm-4 ml-3">
      <h2>결 제</h2>
    </div>  
</div>
		<table class="table table-hover mt-2">
		<thead>
			<tr>
				<th colspan="4">Crossfit 구매 상품</th>
			</tr>		
		</thead>
			<tr>
				<td>
					<div class="form-inline">
						<input type="checkbox" class="form-control mr-1 text-left"
							id="check1" name="check1">
						<img src="${root}/resources/images/sinbal.jpg" width="150px">
					</div>
				</td>
				<td class="justify-content-center">
					<div class="form-inline justify-content-center">
						<a href=" " class="prod-name mr-3 form-inline text-align:middle">
						Crossfit Ticket</a>
						<div class="form-inline float-center">
							<input type="number" name="orderQty" id="gym1" class="col-sm-3" value="1" min="0">
						</div>
					</div>
				</td>
				<td>
					<span class="prod-cost">20000</span>
					<span class="value"> </span><span class="unit">원</span>	
				</td>
				<td class="float-right">
					<button type="button" class="btn btn-primary" onclick="" >구매</button>
					<button type="button" class="btn btn-primary btn-delete" onclick="">삭제</button>
				</td>
			</tr>
		</table>
		<table class="table table-hover">
			<thead>
				<tr>
					<th class="text-left">주문금액 :</th>
					<th>수량 :  </th>
					<th>합계 : </th>
				</tr>
			</thead>
		</table>

	
	<div class="form-check-inline text-center">
    	<input type="checkbox" class="form-check-input" value="">회원정보와 동일
	</div>
	<div class="jumbotron">
		<div class="table table-hover">
		<div class="form-group form-inline">
		이름<input type="text" id="name" class="form-control ml-2 mb-2" size="15" name="name" maxlength="15">
		</div>
<div class="form-group form-inline">
		<label for="tel" class="mr-2 mb-2">전화번호</label>
			<input type="text" class="form-control mr-1 inputNum"
				id="tel1" name="tel1"
				size="3" maxlength="3">
			- <input type="text" class="form-control ml-1 mr-1 inputNum"
				id="tel2" name="tel2"
				size="4" maxlength="4">
			- <input type="text" class="form-control ml-1 inputNum"
				id="tel3" name="tel3"
				size="4" maxlength="4">
	</div>
	<div class="form-group form-inline">
		<label for="email1" class="mr-2 mb-2">이메일</label>
			<input type="text" class="form-control mr-1 inputEmail"
				id="email1" name="email1"
				maxlength="25">
			@ <input type="text" class="form-control ml-1 inputEmail"
				id="email2" name="email2"
				maxlength="25">
		</div>
	<div>
		<label>주소</label>
		<div class="form-inline mb-2">
			<input type="text" class="form-control mr-1"
				placeholder="우편번호" size="5" readonly
				id="zone_code" name="zone_code">
			<button type="button" id="btn_addr"
				class="btn btn-primary mr-1">주소검색</button>
			<input type="text" class="form-control mr-1"
				placeholder="주소" size="35" readonly
				id="addr1" name="addr1">
			<input type="text" class="form-control"
				placeholder="상세주소" size="35"
				id="addr2" name="addr2">
		</div>
	</div>
	
	</div>
	</div>
	<div class="form-check-inline">
    	<input type="checkbox" class="form-check-input justify-content-center" value=""
    	id="agree3" name="agree3">주문동의
	</div>	
		
	<table class="table table-hover mt-2">
		<thead>
			<th class=" form-inline">
				<span>결제 수단</span>
				<td><div class="gallery border-radius: 25px">
  		<a target="_blank" href="kakao.jpg">
   		 <img src="${root}/resources/images/kakao.jpg"  width="100" height="50">
  		</a>
				</div></td>
				<td><div class="gallery">
  		<a target="_blank" href="naver.jpg">
   		 <img src="${root}/resources/images/naver.jpg" width="100" height="50">
  		</a>
				</div></td>
				<td><div class="gallery">
  		<a target="_blank" href="card.jpg">
   		 <img src="${root}/resources/images/card.jpg" width="100" height="50">
  		</a>
				</div></td>
		</thead>
		<table class="table table-hover">
			<thead>
				<tr>
					<th class="text-left">주문금액 :</th>
					<th>수량 :  </th>
					<th>합계 : </th>
				</tr>
			</thead>
		</table>
				
		</table>
	<div style="text-align: right" class="mb-3">
		<button type="button" class="btn btn-primary" onclick="">결제하기</button>
	</div>
	

	<%@ include file="../home_footer.jsp" %>
	</div>
<script src="${root}/resources/bootstrap-input-spinner.js"></script>
<script>
    $("input[type='number']").inputSpinner()
</script>
</body>
</html>