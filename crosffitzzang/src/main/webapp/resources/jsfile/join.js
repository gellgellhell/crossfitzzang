$(document).ready(function() {
	$("#mbr_userid").blur(function() {
		$.get(	"./idchk"
			,{mbr_userid:$("#mbr_userid").val()}
			,function(data, status){
				if(status == "success"){
					if(data == 0){
						$("#mbr_userid_desc").text("사용 가능한 아이디 입니다.");
						$("#mbr_userid_desc").css("color","blue");
						$("#mbr_userid_chk_yn").val("1");
					} else {
						$("#mbr_userid_desc").text("이미 사용 중인 아이디 입니다.");
						$("#mbr_userid_desc").css("color","red");
						$("#mbr_userid_chk_yn").val("0");
					}
				} else {
					alert("잠시 후 다시 시도해 주세요.");
				}
			}//function
		);//get
	});//click
});//ready

$(document).ready(function() {
	$(".inputEng").keyup(function() {
		let tmpElement = event.target;
		let tmpValue = tmpElement.value;
		tmpElement.value
			= tmpValue.replace(/[^ A-Z a-z 0-9 \.]/g, '');
	});//keyup
	$(".inputEmail").keyup(function() {
		let tmpElement = event.target;
		let tmpValue = tmpElement.value;
		tmpElement.value
			= tmpValue.replace(/[^ A-Z a-z 0-9 ! @ . \.]/g, '');
	});//keyup
	$(".inputNum").keyup(function() {
		let tmpElement = event.target;
		let tmpValue = tmpElement.value;
		tmpElement.value
			= tmpValue.replace(/[^ 0-9 \.]/g, '');
	});//keyup
});//ready

$(document).ready(function() {
	$("#btn_join").click(function() {

		if( $.trim( $("#mbr_userid").val() ) == "" ){
			alert("아이디를 확인해 주세요.");
			return;
		}
		if($("#mbr_userid_chk_yn").val() == "0"){
			alert("사용하실 수 없는 아이디 입니다.");
			return;
		}
		if( $.trim( $("#mbr_pwd").val() ) == "" ){
			alert("패스워드를 확인해 주세요.");
			return;
		}
		if( $.trim( $("#mbr_pwdre").val() ) == "" ){
			alert("패스워드 확인을 입력해 주세요.");
			return;
		}
		if( $("#mbr_pwd").val() != $("#mbr_pwdre").val() ){
			alert("패스워드와 패스워드 확인이 서로 다릅니다.");
			return;
		}
		if( $.trim( $("#mbr_name").val() ) == "" ){
			alert("이름을 확인해 주세요.");
			return;
		}
		if( $.trim( $("#mbr_tel1").val() ) == ""
				|| $.trim( $("#mbr_tel2").val() ) == ""
				|| $.trim( $("#mbr_tel3").val() ) == ""){
			alert("전화번호를 확인해 주세요.");
			return;
		}
		if( $.trim( $("#mbr_email1").val() ) == ""
			|| $.trim( $("#mbr_email2").val() ) == ""){
			alert("이메일을 확인해 주세요.");
			return;
		}
		if($("#agree1").prop("checked") != true){
			alert("회원 약관에 동의해 주세요.");
			return;
		}
		if($("#agree2").prop("checked") != true){
			alert("개인 정보 약관에 동의해 주세요.");
			return;
		}

		let mbr_tel = $("#mbr_tel1").val()
					+ '-' + $("#mbr_tel2").val()
					+ '-' + $("#mbr_tel3").val();
		let mbr_email = $("#mbr_email1").val() + '@'
					+ $("#mbr_email2").val();
		$.post(
			"./submit"
			, {
				mbr_userid: $("#mbr_userid").val()
				, mbr_pwd: $("#mbr_pwd").val()
				, mbr_tel: mbr_tel	
				, mbr_email: mbr_email
				, zone_code: $("#zone_code").val()
				, mbr_addr1: $("#mbr_addr1").val()
				, mbr_addr2: $("#mbr_addr2").val()
			}
			, function(data, status) {
				if(status == "success") {
					if(data == 1) {
						alert("회원 가입 되었습니다.\n로그인해 주세요.");
						location.assign("/ict3/");
					} else {
						alert("관리자에게 문의해 주세요.\n02-555-5555");
					}
				} else {
					alert("잠시 후 다시 시도해 주세요.");
				}
			}//function
		);//post

	});//click
});//ready








