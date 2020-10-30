<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오시는 길</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=c7f356da0bd7793c466a860c8e71c697&libraries=services"></script>
<style>
.ibox {
dispaly : flex;
align-content : center;
width : 280px;
height : 600px; 
}
</style>

</head>
<body>

	

	<div class="container">
		<%@ include file="../home_header.jsp" %>
		<section class="col-3 float-left bg-light font-weight-bold nav-link mb-5 mt-3" style = "height: 600px;">
			<ul id = "ibox">
				<li class="label mt-2 mb-2 list-group-item list-group-item-action">
					<a href="${root}/introduce/crossfit"><span class="notice">크로스핏이란</span></a>
				</li>

				<li class="label mt-2 mb-2 list-group-item list-group-item-action">
					<a href="${root}/introduce/introduce"><span class="notice">소개</span></a>
				</li>
				
				<li class="label list-group-item list-group-item-action">
					<a href="${root}/introduce/map"><span class="come">오시는 길</span></a>
				</li>
			</ul>
		</section>
		
		<h1 class="text-muted text-center mt-3 mb-3"> 운동에 미치다 </h1>
		<div id = "map" style = "width : 75%; height : 465px;"></div>
	</div>
		
<script type="text/javascript">
//1단계 : 지도 가져오기
	var container = document.getElementById('map');
	var options = {
		center: new kakao.maps.LatLng(33.450701, 126.570667),
		level: 3
	};
	var map = new kakao.maps.Map(container, options);
	//2단계 : 지도에 위치 표시하기
	var geocoder = new kakao.maps.services.Geocoder();
	geocoder.addressSearch('서울특별시 마포구 양화로 127', function(result, status) {
	     if (status === kakao.maps.services.Status.OK) {

	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	        console.log(result[0].y);
	        console.log(result[0].x);

	        var marker = new kakao.maps.Marker({
	            map: map,
	            position: coords
	        });

	        var infowindow = new kakao.maps.InfoWindow({
	            content: '<div style="width:150px;text-align:center;padding:6px 0;">운동에 미치다</div>'
	        });
	        infowindow.open(map, marker);

	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	    }
	});
	</script>
	
	<div class = "clearfix"> 
		<div style = "color: black;"><b><img src = "${root}/resources/notice/notice_location.jpg">
			회사주소 : &nbsp;서울시 마포구 양화로 127, 첨단빌딩 7층, 지하철 2호선 홍대역 1번출구 </b>
		</div>
		<div  style = "color: black;" class = "mt-2"><b><img src = "${root}/resources/notice/notice_call.jpg">
			대표전화 : 02-1234-5678</b>
		</div>
	</div>
	
			<%@ include file="../home_footer.jsp" %>
			
			
</body>
</html>
