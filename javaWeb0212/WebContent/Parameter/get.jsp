<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>get 방식 파라미터 읽기</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		// hobby는 체크박스이나 getParameter로 읽으면 첫번째 선택된 항목 하나만 넘김
		//String hobby = request.getParameter("hobby");
		// 이런 경우 getParameterValues로 읽어서 배열로 리턴해야 함
		String [] hobby = request.getParameterValues("hobby");
		String age = request.getParameter("age");
	%>
	<p>name:<%=name %></p>
	<!-- 배열은 바로 출력하면 안되고 반복문을 이용해서 출력 -->
	<p>hobby:<%for(String imsi : hobby){out.write(imsi + "\t");} %></p>
	<p>age:<%=age %></p>
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