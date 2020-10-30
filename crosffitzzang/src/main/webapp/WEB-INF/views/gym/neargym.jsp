<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지역별 체육관</title>
<meta name="viewport" content="width=1080px,maximum-scale=2.0,minimum-scale=0.4,user-scalable=yes">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=c7f356da0bd7793c466a860c8e71c697&libraries=services"></script>

<script type="text/javascript">
// $(document).ready(function() {
// 	$("#btn_search").click(function() {
// 		$.get(
// 			"${root}/maprest/searchjp1"
// 			, { searchWord : $("#search_word").val() }
// 			, function(data, status) {
// 				$("tbody").empty();
// 				$.each(data, function(index, dto) {
// 					 					$("tbody").append(
// 						"<tr>"
// 						+ "<td>" + dto.bizplc_nm + "</td>"
// 						+ "<td>" + dto.refine_roadnm_addr + "</td>"
// 						+ "<td>" + dto.locplc_faclt_telno_dtls + "</td>"
// 						+ "</tr>"
//					);//append
// 					displayMarker(dto.refine_wgs84_lat
//									, dto.refine_wgs84_logt
//									, dto.bizplc_nm);
//				});//each
//				mapLevel(8);
//			}//function
//		);//get
//	});//click
// });//ready
</script>

</head>
<body>
	<div class="container">
	<%@ include file="../home_header.jsp" %>
	</div>
	
		<div class="container form-inline">
		
	<div class="dropdown mr-4 mt-4 mb-2">
  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" style="width:120px; text-align:right;">
    시
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="#">서울시</a>
    <a class="dropdown-item" href="#">경기도</a>
    <a class="dropdown-item" href="#">부산</a>
    <a class="dropdown-item" href="#">그외지역</a>
  </div>
</div>

	<div class="dropdown mt-4 mb-2">
  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" style="width:120px; text-align:right;">
    구
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="#">강서구</a>
    <a class="dropdown-item" href="#">강남구</a>
    <a class="dropdown-item" href="#">강북구</a>
    <a class="dropdown-item" href="#">강동구</a>
  </div>
</div>

</div>

		<div class="container">
		<div>
			<div class="table table-hover w-70 mt-2">
		<img src="${root}/resources/images/gym_newgen_01.jpg" class="float-left mr-1" style="width:250px; height: 300px;">
		<img src="${root}/resources/images/gym_newgen_01.jpg" class="float-left mr-1" style="width:250px; height: 300px;">
		<img src="${root}/resources/images/gym_newgen_01.jpg" class="float-left mr-1" style="width:250px; height: 300px;">

			</div>
		</div>
				
		<div class="w-27">
			<div class="form-inline mr-auto ml-auto mb-3 mt-3 text-right">
      		    <input class="form-control" style = "width:280px" type="text" placeholder=" SEARCH ">
        		<button class="btn btn-dark ml-2" type="submit">🔍</button>
 			</div>
			
		<div id="map" style=" height: 300px;"></div>
		
			</div>
<script type="text/javascript">
//지도 생성하기 : https://apis.map.kakao.com/web/sample/basicMap/
var mapContainer = document.getElementById('map'),
mapOption = { 
	center: new kakao.maps.LatLng(37.5548815216613, 126.920497567982),
	level: 3
};
var map = new kakao.maps.Map(mapContainer, mapOption);
//마커 생성하기 : https://apis.map.kakao.com/web/sample/basicMarker/
var markerPosition = new kakao.maps.LatLng(37.5548815216613, 126.920497567982); 
var marker = new kakao.maps.Marker({
	position: markerPosition
});
marker.setMap(map);
//라이브러리 : https://apis.map.kakao.com/web/sample/keywordBasic/
var infowindow = new kakao.maps.InfoWindow({zIndex:1});
function displayMarker(placey, placex, placeName) {
	var marker = new kakao.maps.Marker({
		map: map,
		position: new kakao.maps.LatLng(placey, placex) 
	});
	// 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다.	
    kakao.maps.event.addListener(marker, 'click', function() {
        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + placeName + '</div>');
        infowindow.open(map, marker);
    });
	//위치 이동
    var bounds = new kakao.maps.LatLngBounds();
    bounds.extend(new kakao.maps.LatLng(placey, placex));
    map.setBounds(bounds);
}//displayMarker
//지도 레벨 바꾸기 : https://apis.map.kakao.com/web/sample/changeLevel/
function mapLevel(level) {
	map.setLevel(level);
}//mapLevel
</script>
		<table class="table table-hover mt-3 mb-3" >
			<thead>
				<tr>
					<th>사업장명</th>
					<th>지역</th>
					<th>전화번호</th>
				</tr>
			</thead>
			<tbody></tbody>
		</table>

				
		</div>
	

	
	
		<div class="container">
			<%@ include file="../home_footer.jsp" %>
		</div>
		
		
	
</body>
</html>