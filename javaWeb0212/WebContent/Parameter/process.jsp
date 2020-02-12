<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 처리 페이지</title>
</head>
<body>
	<%
		// 파라미터 읽기 (없는 name 사용시 null 리턴, 입력 안 할 시 ""리턴)
		// "./process.jsp?query=korea&name=park"
		String query = request.getParameter("query");
		String name = request.getParameter("name");
	%>
	<p>query:<%=query %></p>
	<p>name:<%=name %></p>
</body>
</html>