<!-- charset은 출력을 utf-8
pageEncoding은 현재 문서를 utf-8로 저장 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 페이지 소스 보기했을 때 공백을 제거하는 설정 -->
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>처음 만들어본 jsp파일</h2>
	<p>내용 수정</p>
	
	<%
		// 자바 코드 작성
		int a = 10;
		int b = 20;
		int result = a + b;
	%>
	
	<p>result:<%=result %></p>
</body>
</html>