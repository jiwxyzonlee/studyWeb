<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>out 객체 이용</title>
</head>
<body>
	<%
		out.println("<h2>out을 이용한 출력</h2>");
		out.println("<p>나이<select name='age'");
		
		/*<option value = 1>1</option>*/
		
		for(int i = 1; i < 100; i = i + 1){
			out.println("<option value = " + i + ">" + i + "</option>");
		}
		
		out.println("</select></p>");
	%>
	<!-- javascript 코드 그대로 보일 때 -->
	<div id = "disp"></div>
	<script>
		// 스크립트는 소스보기를 하면 코드 확인이 가능 -> 보안 취약
		// java 코드는 소스보기 할 시 결과만 보일 뿐 소스코드가 보이지 않음 
		//(보안이 클라이언트보다 스크립트가 우수)
		var disp = document.getElementById("disp");
		var html = "<select name='year'>";
		for(var i = 1900; i < 2021; i = i +1) {
			html = html + "<option value=" + i + ">" + i + "</option>";
		}
		html = html + "</select>";
		disp.innerHTML = html;
	</script>
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