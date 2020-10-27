<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fail Message</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container">
		<%@ include file="../home_header.jsp" %>
		<h1 class="text-muted mt-3 mb-3 text-center">
			오류 안내 </h1>
		<h3 class="text-center mb-3">
			Fail Location : ${fail_loc}
			Fail Message : ${fail_msg}
		</h3>
		<%@ include file="../home_footer.jsp" %>
	</div>
</body>
</html>
