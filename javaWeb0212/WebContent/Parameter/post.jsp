<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 파라미터 인코딩 설정
		request.setCharacterEncoding("utf-8");
	
		String pw1 = request.getParameter("pw");
		String words = request.getParameter("words");
	%>
	<p>비밀번호:<%=pw1 %></p>
	<p>하고 싶은 이야기:<%=words %></p>
	<%@ page import = "java.io.*, java.sql.*" %>
	<%
		// 오늘 날짜를 문자열로 생성
		long d = System.currentTimeMillis();
		// java.sql.Date는 날짜만 저장하고 toString()을 호출하면 날짜만 문자열로 리턴
		Date today = new Date(d);
		String filename = today.toString();
		
		// 파일에 기록할 수 있는 객체를 생성
		// 파일이 없으면 생성하고 있으면 뒤에 이어붙이기
		PrintWriter pw = 
			new PrintWriter(
					new FileOutputStream(
							"C:\\Users\\admin\\Documents\\javaWebApplication\\" + filename + ".log", true));
		// 접속한 IP 주소 가져오기
		String ip = request.getRemoteAddr();
		// 요청한 URL 가져오기 (전체 요청 경로)
		String requestURI = request.getRequestURI();
		// 루트 경로
		String contextPath = request.getContextPath();
		// 전체 요청 경로에서 루트 경로 제외하기
		String url = requestURI.substring(contextPath.length() + 1);
		
		// 파일에 기록
		pw.println(ip + "-" + url + "\n");
		pw.flush();
	
		pw.close();
		
	%>
</body>
</html>