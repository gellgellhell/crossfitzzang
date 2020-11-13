$(document).ready(function() {
	$("#id").blur(function() {
		$.get(
			"./idchk"
			,{id:$("#id").val()}
			,function(data, status){
				if(status == "success"){
					if(data == 0){
						$("#id_desc").text("사용 가능한 아이디 입니다.");
						$("#id_desc").css("color","blue");
						$("#id_chk_yn").val("1");
					} else {
						$("#id_desc").text("이미 사용 중인 아이디 입니다.");
						$("#id_desc").css("color","red");
						$("#id_chk_yn").val("0");
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

		if( $.trim( $("#id").val() ) == "" ){
			alert("아이디를 확인해 주세요.");
			return;
		}
		if($("#id_chk_yn").val() == "0"){
			alert("사용하실 수 없는 아이디 입니다.");
			return;
		}
		if( $.trim( $("#pwd").val() ) == "" ){
			alert("패스워드를 확인해 주세요.");
			return;
		}
		if( $.trim( $("#pwdre").val() ) == "" ){
			alert("패스워드 확인을 입력해 주세요.");
			return;
		}
		if( $("#pwd").val() != $("#pwdre").val() ){
			alert("패스워드와 패스워드 확인이 서로 다릅니다.");
			return;
		}
		if( $.trim( $("#name").val() ) == "" ){
			alert("이름을 확인해 주세요.");
			return;
		}
		if( $.trim( $("#tel1").val() ) == ""
				|| $.trim( $("#tel2").val() ) == ""
				|| $.trim( $("#tel3").val() ) == ""){
			alert("전화번호를 확인해 주세요.");
			return;
		}
		if( $.trim( $("#email1").val() ) == ""
			|| $.trim( $("#email2").val() ) == ""){
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

		let tel = $("#tel1").val()
					+ '-' + $("#tel2").val()
					+ '-' + $("#tel3").val();
		let email = $("#email1").val() + '@'
					+ $("#email2").val();
		$.post(
			"./submit"
			, {
				id: $("#id").val()
				, pwd: $("#pwd").val()
				, tel: tel
				, email: email
				, name: $("#name").val()
				, zone_code: $("#zone_code").val()
				, addr1: $("#addr1").val()
				, addr2: $("#addr2").val()
				, biz_reg_no : $("#biz_reg_no").val()
				, biz_place_nm : $("#biz_place_nm").val()
				, biz_boss_nm : $("#biz_boss_nm").val()
				, biz_yn : $("#biz_member").prop("checked")
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








