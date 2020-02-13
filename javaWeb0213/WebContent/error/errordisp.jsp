<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 이 페이지에서는 exception 객체를 사용할 수 있음 -->
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에외 페이지</title>
</head>
<body>
	<%
		out.println("<h3>문제가 발생했습니다. 빠른 시일 내 복구하겠습니다.</h3>");
	%>
</body>
</html>