<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 생성</title>
	<%
		// 다른 브라우저에서 한글이 깨진다면 자바를 직접 입력하지 말고
		// java.net.URLEncoder.encode("자바", "utf-8")로 인코딩해 대입
		// 쿠키 생성
		//Cookie cookie = new Cookie("language", "java");
		
		// 쿠키의 값에 한글 사용
		Cookie cookie = new Cookie(
			java.net.URLEncoder.encode("언어", "utf-8"), "자바");
		
		// 쿠키의 수명 설정
		cookie.setMaxAge(60);
		
		// 쿠키 저장
		response.addCookie(cookie);
	%>
</head>
<body>
	<a href = " ./cookieread.jsp">쿠키 읽기</a>
</body>
</html>