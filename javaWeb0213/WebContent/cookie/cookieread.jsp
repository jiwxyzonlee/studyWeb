<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키를 읽어서 출력하기</title>
</head>
<body>
	<%
		// 모든 쿠키 가져오기
		Cookie [] cookies = request.getCookies();
		// 모든 쿠키를 순회하면서 쿠키의 값을 출력
		for(Cookie cookie : cookies) {
			out.println("<p>" + 
				java.net.URLDecoder.decode(cookie.getName(), "utf-8") + 
					":" + cookie.getValue() + "</p>");
		}
	%>
</body>
</html>