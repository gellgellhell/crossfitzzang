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
$(document).ready(function() {
	$("#btn_search").click(function() {
		$.get(
			"${root}/gymrest/searchgym1"
			, { searchWord : $("#search_word").val() }
			, function(data, status) {
				$("#tbody2").empty();
				$.each(data, function(index, dto) {
					$("#tbody2").append(
					 "<tr>"
					+ "<td>" + dto.bno + "</td>"
					+ "<td>" + dto.title + "</td>"
					+ "<td>" + dto.location + "</td>"
					+ "<td>" + dto.tell3 + "</td>"
					+ "</tr>"
					) //append
					
				}); //each
				mapLevel(8);
			}//function
		); //get
	}); //click
}); //ready
</script>
<script type="text/javascript">
$(document).ready(function() {
	$("#sel_l").change(function() {
		$.get(
			"${root}/gymrest/selectGugun"
			, { sidoCode : $("#sel_l").val() }
			, function(data, status) {
				$("#sel_m").empty();
				$("#sel_m").append(
						"<option value='0'>지역구 선택</option>"
				);
				$.each(data, function(index, dto) {
					$("#sel_m").append(
						"<option value='"+dto.gugun_code+"'>"
						+ dto.gugun_name
						+ "</option>"
					);//append
				});//each
			}//function
		);//get
	});//change

	$("#btn_search").click(function() {
		if($("#sel_l").val() == 0){
			alert("시도 코드를 선택하세요.");
			return;
		}
		$.get(
			"${root}/gymrest/jpListWithGugun"
			, {
				sido_code : $("#sel_l").val()
				, gugun_code : $("#sel_m").val()
			}
			, function(data, status) {
				$("tbody").empty();
				mapNull();
				$.each(data, function(index, dto) {
					$("tbody").append(
						"<tr>"
							+ "<td>" + dto.bno + "</td>"
							+ "<td>" + dto.title + "</td>"
							+ "<td>" + dto.location + "</td>"
							+ "<td>" + dto.tell3 + "</td>"
						+ "</tr>"
					);//append
					displayMarker(dto.biz_garo
							, dto.biz_sero);
				});//each
				mapLevel(8);
			}//function
			, "json"
		);//get
	});//change
});//ready
</script>



</head>
<body>
	<div class="container">
	<%@ include file="../home_header.jsp" %>
	
	</div>
		<div class="container form-inline">
		
		<div class="form-inline mb-3 mt-3">
			<label for="sel_l" class="mr-1">시도 : </label>
			<select id="sel_l" class="form-control mr-1">
				<option value="0">시도 선택</option>
				<c:forEach var="dto" items="${sidoList}">
					<option value="${dto.sido_code}">
						${dto.sido_name}
					</option>
				</c:forEach>
			</select>
			
			<label for="sel_m" class="mr-1">구군 : </label>
			<select id="sel_m" class="form-control mr-1">
				<option value="0">구군 선택</option>
				<c:forEach var="dto" items="${sidoList}">
					<option value="${dto.gugun_code}">
						${dto.gugun_name}
					</option>
				</c:forEach>
			</select>
				<button class="btn btn-dark ml-2" id="btn_search" type="submit">🔍</button>
		</div>
		
	

</div>

		<div class="container">
		
		<div>
			<div class="table table-hover w-70 mt-2">
				
			</div>
		<img src="${root}/resources/images/gym_newgen_01.jpg" class="float-left mr-1" style="width:400px; height: 300px;">
		<div class = "float-left">
	<div class = "width:400px; height:450px;">
		<h2 class = "text-center"><th>안내사항</th></h2>
		<table class = "table table-hover text text-muted text-left">
		<tr><td>운동복은 각자 챙겨주셔야합니다.</td></tr>
		<tr><td>운동시간 10분전에는 준비 부탁드립니다.</td></tr>
		<tr><td>코로나로 인하여 마스크 필수입니다.</td></tr>
		<tr><td><a href="${root}/gym/view" class="btn btn-primary text-right">Go to Crossfit</a></td></tr>	
		</table>
	</div>
		</div>	
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
		<div class="container">
		<table class="table table-hover mt-3 mb-3" >
			<thead>
				<tr>
					<th>번호</th>
					<th>사업장명</th>
					<th>지역</th>
					<th>전화번호</th>
				</tr>
			</thead>
			<tbody id="tbody2"></tbody>
		</table>

				
		</div>

	
	
		<div class="container">
			<%@ include file="../home_footer.jsp" %>
		</div>
		
		
	
</body>
</html>