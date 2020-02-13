<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 처리</title>
</head>
<body>
	<%
		// 세션 삭제
		session.invalidate();
		
		// 보통은 로그아웃하면 메인 페이지로 리다이렉트
		//response.sendRedirect("./");
	%>
	
	<h3>로그아웃하셨습니다.</h3>
	<h4>5초 후에 메인 페이지로 이동</h4>
	<script>
		setTimeout(function() {
			location.href="./"
		}, 5000)
	</script>
</body>
</html>