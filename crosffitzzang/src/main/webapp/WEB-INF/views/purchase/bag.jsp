<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<meta name="viewport" content="width=1080px,maximum-scale=2.0,minimum-scale=0.4,user-scalable=yes">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">
<div class="container">
	<%@ include file="../home_header.jsp" %>	
  <div class="row mt-3">
    <div class="col-sm-4 ml-3">
      <h2>장바구니</h2>
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
						<img src="${root}/resources/bag/bag_shoes.jpg" width="150px">
					</div>
				</td>
				<td>
					<div class="form-inline justify-content-center">
						<a href=" " class="prod-name mr-3 form-inline">
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
					<button type="button" class="btn btn-primary" id = "btn_purchase" >구매</button>
					<button type="button" class="btn btn-primary btn-delete" id = "btn_delete">삭제</button>
				</td>
		</tr>
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
		<div style="text-align: center" class="mb-3">
		<button type="button" class="btn btn-primary" id = "btn">주문하기</button>
		<button type="button" class="btn btn-primary" id = "btn_cancel">취소하기</button>
		</div>
		<div class="jumbotron">
 		<h4>주문전 유의사항</h4>
  			<ul>
  				<li>구매 수량을 꼭 확인해주세요</li>
  				<li>업체 사정에 따라 구매 후 취소될 수 있습니다</li>
  				<li>주문정보는 주문 완료 후 '마이페이지'에서 확인 가능합니다.</li>
  			</ul>
</div>
	<%@ include file="../home_footer.jsp" %>
	</div>
<script src="${root}/resources/bootstrap-input-spinner.js"></script>
<script>
    $("input[type='number']").inputSpinner()
</script>
</body>
</html>