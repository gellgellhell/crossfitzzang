$(document).ready(function() {
	$("#btn_addr").click(function() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            $("#zone_code").val(data.zonecode);
	            $("#addr1").val(data.address);
	        }
	    }).open();
	});//click
});//ready
