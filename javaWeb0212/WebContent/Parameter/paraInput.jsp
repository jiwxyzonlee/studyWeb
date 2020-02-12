<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 만들기</title>
</head>
<body>
	<!-- 링크에 파라미터 만들기 (직접 파라미터 입력)-->
	<!-- <a href="./process.jsp?query=korea&name=park">대한민국</a><br/> -->
	<a href="./process.jsp?query=한국&name=박">대한민국</a><br/>
	
	<!-- form을 이용한 파라미터 만들기 -->
	
	<h1>GET 방식 전송</h1>
	<form method="get" action="get.jsp">
		이름:<input type="text" name="name"/>
		<br/>
		취미:	<input type="checkbox" name="hobby" value="game">게임
			<input type="checkbox" name="hobby" value="game">독서
			<input type="checkbox" name="hobby" value="pool">당구
		<br/>
		나이:	<select name="age">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
			</select>
		<br/>
		<input type="submit" value="전송"/>
	</form>
	
	<h1>Post 방식 전송</h1>
	<form method="post" action="post.jsp">
		비밀번호:<input type="password" name="pw"/> <br/>
		하고 싶은 이야기:	<textarea name="words" row="20" cols="20"></textarea>
		<br/>
		<input type="submit" value="전송"/>
	</form>
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