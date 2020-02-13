<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 예외가 발생했을 때 보여질 페이지 설정 -->
<%@page errorPage = "./errordisp.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 입력한 파라미터 읽기
		String su1 = request.getParameter("su1");
		String su2 = request.getParameter("su2");
		
		int result = Integer.parseInt(su1) + Integer.parseInt(su2);
		
		out.println("<p>더한 결과:" + result + "</p>");
	%>
</body>
</html>