<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fdetail1</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#btn_back").click(function() {
		location.href="${root}/";
	});//click
});//ready
</script>
</head>
<body>
	<div class="container">
			<%@ include file="../home_header.jsp" %>
				<br>
				<h1 class="mb-3 font-weight-bold text-center text-muted">개인정보 처리방침</h1>
				<hr>
				<br>
	
	<div class="container border border-muted rounded mt-2 ml-1"
			style="width: 100%; height: 470px; overflow: auto">
				<td>
				주식회사 ict3(이하 "회사")는 고객의 개인정보를 중요시하며, 개인정보의 보호와 관련하여 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」 및 「개인정보 보호법」 등 관련법 상의 개인정보 보호 규정을 준수하고 있으며, 회사는 고객이 회사의 개인정보 처리방침의 내용에 대하여 「동의」버튼 또는 「취소」버튼을 클릭할 수 있는 절차를 마련하여, 「동의」버튼을 클릭하면 개인정보 수집 및 이용 등 아래 개인정보 처리방침에 대해 동의한 것으로 봅니다. 
				
				
				1. 개인정보의 수집 및 이용목적 
				
				회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다. 
				
				① 회원권 상품 판매 및 중개 서비스의 이행 및 서비스 제공에 따른 요금정산- 단일회원권 및 통합회원권 서비스 제공, 구매 및 요금 결제, 금융거래 본인 인증 및 금융서비스, 요금추심 등 
				② 고객관리- 고객관리 및 이용에 따른 본인확인, 개인식별, 불량회원의 부정 이용 방지와 비인가, 사용 방지, 가입/탈퇴 의사 확인, 연령확인, 만 14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 불만처리 및 민원처리, 고지사항 전달 등  
				③ 제휴시설 정보제공  제휴시설 이용시 본인확인, 개인식별, 불량 또는 부적법한 이용자에 대한 중개 서비스 제공 방지와 사용 방지 등 ④ 기타- 본인 의사 확인 등 원활한 의사소통 경로의 확보, 새로운 서비스/신상품이나 이벤트 정보 안내 
				
				
				2. 개인 정보 수집 항목 
				
				회사가 서비스 제공을 위해 제공 받는 수집한 최소한의 개인 정보 항목과 목적은 다음과 같으며, 회사는 고객의 회원가입 시 고객 스스로의 정보 입력 또는 가상계좌번호, 로그(Log), 쿠키(Cookie) 등 자동으로 생성되는 정보를 서버(Server)에 저장하는 방법으로 정보를 수집합니다.  
				
				① 회원가입 및 관리 : 이메일, 비밀번호, 닉네임, 휴대폰 번호 
				② 재화 또는 서비스 제공 : 성명, 주소, 성별, 신용카드번호, 은행계좌번호 등 결제정보 
				③ 서비스 이용과정에서 아래 개인정보 항목이 자동으로 생성되어 수집될 수 있습니다. - IP주소(IP Address), 쿠키(Cookie), 로그(Log) 기록, 가상계좌번호, 기기고유번호, 서비스 이용기록, 방문 기록, 불량이용기록 등 
				
				
				3. 개인정보의 이용 및 보유기간 
				
				고객의 동의 하에 수집된 개인정보는 회사가 고객에게 서비스를 제공하는 기간에 한하여 보유 또는 이용되며, 고객이 해지를 요청하는 경우에는 아래 '개인정보의 파기절차 및 방법'에 따라 파기됩니다. 다만, 회사는 고객의 개별 동의를 받은 경우, 고객이 요금을 미납한 경우, 개인정보 도용 등으로 인한 고객 피해발생시 피해자 보호, 소비자의 불만 및 분쟁 처리 등 관계법령의 규정에 따라 보존의 필요성이 있는 경우에는 아래와 같은 개인정보에 대하여 명시한 기간 동안 보존하는 것으로 합니다. 
				
				① 회사와 고객간 민원, 소송 등 분쟁 과정 중 법률로 정한 보유기간이 경과한 경우 
				- 분쟁 해결시까지 보존 
				② 회사가 개별적으로 고객의 동의를 받은 경우 
				- 해당 동의 받은 기간까지 보존 
				③ 관련 법령에 의한 개인정보 보유 기간 
				- 회원 가입 및 관리 기록: 1년 
				- 계약 또는 청약철회 등에 관한 기록: 5년, 다만 회사와 “제휴시설”과의 계약을 위해 “제휴시설”이 제공하는 신원정보는 “제휴시설”의 업무가 종료된 때로부터 5년까지 
				- 대금결제 및 재화 등의 공급에 관한 기록: 5년 
				- 소비자의 불만 또는 분쟁처리에 관한 기록: 3년 
				- 표시/광고에 관한 기록: 6개월 
				
				
				4. 개인정보 처리 및 제공 
				
				① 회사는 고객의 개인정보를 회원 가입 및 이용약관 및 제1조 개인정보의 수집 및 이용목적에서 고지한 범위 또는 회원 가입시 동의한 범위 및 이용약관에 명시한 범위 내에서 처리하며, 동 범위를 넘어 처리하거나 제3자에게 제공하지 않습니다. 
				② 회사는 고객에 대하여 보다 더 질 높은 서비스 제공 등을 위해 아래와 같이 제휴사에게 개인정보를 제공하고 있습니다. 회사는 고객님의 개인정보를 회사의 서비스와 무관한 타 기업, 기관에 공개하지 않습니다. 단, 고객님의 개인정보를 제공하는 경우 다음과 같으며, 고객이 아래 제공을 거부하였을 경우 서비스 제공에 어려움이 있을 수 있습니다. 
				
				- 회원이 서비스를 이용하고자 결제한 각 제휴시설  
				- 제공 항목: 성명, 주소, 연락처, 성별, 운동시작일  
				- 이용 목적: 제휴시설 이용 및 회원관리 목적  
				- 제공 기간: 목적에 따른 개인정보 제공 시부터 제공 목적 달성 시까지  
				
				
				- 제공 항목: 상품명, 상품결제금액, 결제인증값  
				- 이용 목적: 결제서비스 처리, 요금납부, 제휴서비스 목적  
				- 제공 기간: 목적에 따른 개인정보 제공 시부터 제공 목적 달성 시까지 
				
				③ 회사는 보다 나은 서비스 제공을 위하여 제2항 외에도 고객의 개인정보를 제휴사에게 제공할 수 있으며, 이에 따라 개인정보를 제공할 경우 회사는 사전에 고객께 제휴사가 누구인지, 제공되는 개인정보항목이 무엇인지, 왜 그러한 개인정보가 제공되어야 하는지, 그리고 언제까지 어떻게 보호ㆍ관리되는지에 대해 개별적으로 서면 또는 전자우편 등을 통해 고지하여 동의를 구하는 절차를 거치게 되며, 고객께서 동의하지 않는 경우에는 제휴사에게 제공하지 않습니다. 제휴관계에 변화가 있거나 제휴관계가 종결될 때도 같은 절차에 의하여 고지하거나 동의를 구합니다. 
				④ 회사는 기타 아래의 경우에도 고객의 개인정보를 제3자에게 제공할 수 있습니다.  
				
				- 관계법령에 의하여 수사상의 목적으로 관계기관으로부터의 요구가 있을 경우  
				- 통계작성학술연구나 시장조사를 위하여 특정 개인을 식별할 수 없는 형태로 광고주 협력사나 연구단체 등에 제공하는 경우  
				- 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우  
				
				⑤ 관계법령에 의하거나 수사기관의 요청에 의해 정보를 제공한 경우에도 이를 회사자에게 고지하는 것을 원칙으로 운영하고 있습니다. 법률상의 근거에 의해 부득이하게 고지를 하지 못할 수도 있습니다. 본래의 수집 및 이용목적에 반하여 무분별하게 정보가 제공되지 않도록 최대한 노력하겠습니다. 
				⑥ 회사는 새로운 기술개발이나 보다 나은 서비스의 제공을 위하여 이용자들의 개인정보를 제공할 수 있습니다. 이 경우에도 정보제공 이전에 개인정보를 제공할 기관이나 단체가 누구인지, 어떤 정보가 왜 필요한지, 그리고 언제까지 어떻게 보호되고 관리되는지 알려드리고 동의를 구하는 절차를 거치게 되며, 이용자들의 동의가 없는 경우에는 추가적인 정보를 임의로 수집하거나 제공하지 않습니다. 
				
				
				5. 고객의 권리와 그 행사방법 
				
				① 고객은 회사에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있으며, 고객이 만 14세 미만의 아동인 경우 그 아동의 법정대리인은 아동의 개인정보에 대한 열람, 정정, 삭제 및 처리정지를 요청할 수 있습니다. 
				- 개인정보 열람요구  
				- 오류 등이 있을 경우 정정 요구  
				- 삭제요구  
				- 처리정지 요구 
				
				② 고객이 개인정보의 삭제를 요청한 경우 제3조의 개인정보의 처리 및 보유기간과 제7조의 개인정보의 파기절차 및 파기방법에 명시된 바에 따릅니다. 
				
				
				6. 개인정보의 취급위탁 
				
				① 회사는 원활한 개인정보 업무처리를 위하여 개인정보 처리업무 중 일부를 다음과 같이 외부에 위탁할 수 있으며, 관계 법령에 따라 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 합니다.  
				
				- 수탁자/위탁업무/개인정보의 이용 및 보유기간 
				 ㈜제이티넷/전자결제대행/회원탈퇴 시 혹은 위탁계약 종료 시까지 
				㈜케이지이니시스/전자결제대행/회원탈퇴 시 혹은 위탁계약 종료 시까지  ㈜에스케이텔링크/국내 SMS 발송/회원탈퇴 시 혹은 위탁계약 종료 시까지  
				
				② 회사는 위탁계약 체결시 「개인정보 보호법」 제26조에 따라 위탁업무 목적 및 범위, 위탁업무 수행목적 외 개인정보 처리금지, 재위탁 제한, 수탁자에 대한 관리, 감독, 안정성 확보 조치 및 책임에 관한 사항을 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독합니다. 
				
				
				8. 개인정보의 보호조치  
				
				회사는 개인정보의 안정성 확보를 위해 다음과 같은 조치를 취하고 있습니다. 
				- 관리적 조치 : 개인정보 보호책임자의 지정 등 개인정보보호 조직의 구성 및 운영에 관한 사항, 개인정보취급자의 교육에 관한 사항을 포함하는 내부관리계획의 수립 및 시행 
				- 기술적 조치 : 개인정보를 처리할 수 있도록 체계적으로 구성한 데이터베이스시스템에 대한 접근권한의 부여, 변경 및 말소 등에 관한 기준의 수립 및 시행, 개인정보처리시스템에 대한 침입차단시스템 및 침입탐지시스템의 설치 및 운영, 비밀번호의 생성 방법 및 변경 주기 등의 기준 설정과 운영, 개인정보취급자가 개인정보처리시스템에 접속하여 개인정보를 처리한 경우 접속 일시, 처리내역 등의 저장 및 이의 확인 및 감독, 개인정보처리시스템에 대한 접속기록을 별도 저장장치에 백업 보관, 비밀번호의 일방향 암호화 저장, 계좌정보 등 금융정보의 암호화 저장, 정보통신망을 통하여 이용자의 개인정보 및 인증정보를 송신 및 수신하는 경우 보안서버 구축 등의 조치, 개인정보처리시스템 및 개인정보취급자가 개인정보 처리에 이용하는 정보기기에 컴퓨터바이러스, 스파이웨어 등 악성프로그램의 침투 여부를 항시 점검 및 치료할 수 있도록 백신소프트웨어 설치 및 주기적 갱신 및 점검 
				
				
				9. 인터넷 접속정보파일 
				
				① 회사는 웹사이트 운영에 있어 필요 시 회원의 정보를 찾아내고 저장하는 쿠키(Cookie)를 운용합니다. 쿠키는 웹사이트를 운영하는데 이용되는 서버가 회원의 브라우저에 보내는 아주 작은 텍스트 파일로서 회원의 단말기(PC, 스마트폰, 태블릿 PC 등)의 하드디스크에 저장되며, 웹브라우저의 종료 시나 로그아웃(Logout) 시 만료됩니다. 
				② 회원은 회사의 보안 정책을 통해 쿠키(Cookie)에 의한 정보수집의 허용 거부 여부를 결정하실 수 있습니다. 
				
				
				10. 개인정보 보호책임자 및 관리담당자 지정 
				
				회사는 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제를 처리하기 위하여 아래와 같이 개인정보 보호책임자 및 관리담당자를 지정하고 있습니다. 
				
				- 개인정보 보호책임자 
				성명 : 춘향이
				부서 및 직책 : ㈜미치다 대표이사 
				연락처: 02-000-0000
				이메일 : 123@123.co.kr 
				
				-개인정보 관리담당자 
				성명 : 홍길동
				부서 및 직책 : ㈜미치다 개발팀장 / 최고기술책임자 
				연락처 : 02-000-0000 
				이메일 : 123@123.co.kr 
				
				
				11. 개인정보 열람청구 
				
				고객은 개인정보 보호법 제35조에 따라 개인정보의 항목 및 내용, 개인정보의 수집 및 이용의 목적, 개인정보 보유 및 이용기간, 개인정보의 제3자 제공 현황, 개인정보 처리에 동의한 사실 및 내용 중 열람하려는 사항을 표시한 개인정보 열람요구서를 작성하셔서 전항의 개인정보 보호책임자에 제출하여 개인정보를 열람청구할 수 있으며, 회사는 정보주체의 개인정보 열람청구가 10일 이내에 처리될 수 있도록 노력하겠습니다. 다만 10일 이내에 열람시켜 드릴 수 없는 정당한 사유가 발생하면 고객에게 그 사유를 알리고 열람을 연기할 수 있으며, 그 사유가 소멸하면 지체 없이 열람시켜 드리겠습니다. 
				
				
				12. 개인정보 취급방침 변경 
				
				가. 회사의 개인정보 취급방침은 대한민국의 법률 개정과 회사의 내부 정책 변동에 따라 변경될 수 있습니다. 
				나. 회사가 개인정보 취급방침을 개정하는 경우, 회사는 변경사항을 회사 웹사이트의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 
				
				[부칙] (2017년 01월 16일) 
				1. 이 약관은 2017년 01월 16일부터 적용됩니다. 

				</td>
				</div>
				<br><br>
				<hr>
				
			<div class="float-right mb-3">
				<button type="button" id="btn_back"
						class="btn btn-dark text-white">돌아가기</button>
			</div>
			
			</div>
	
		<br><br><br>
		<%@ include file="../home_footer.jsp" %>

</body>
</html>