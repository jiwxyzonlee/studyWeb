<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 객체</title>
</head>
<body>
	<h3>접속한 클라이언트의 IP: <%=request.getRemoteAddr() %></h3>
	<h3>context 경로: <%=request.getContextPath() %></h3>
	<h3>전체 요청 경로: <%=request.getRequestURI() %></h3>
	
	<%
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		// 위에서 requestURI에서 contextPath를 제외한 부분 생성
		// 문자열 잘라내기 (기호-split 또는 위치-substring)
		String command = requestURI.substring(contextPath.length()); // 이 위치부터 글자를 잘라내겠다
	%>
	<!-- Controller 패턴을 이용할 때 이렇게 잘라서 라우팅을 함 -->
	<p>전체 요청 경로에서 contextPath를 제외한 부분: <%=command %></p>
</body>
</html>