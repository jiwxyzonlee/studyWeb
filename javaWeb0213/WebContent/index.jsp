<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Web 0213</title>
</head>
<body>
	<a href = "./cookie/cookiecreate.jsp">쿠키 생성</a><br/>
	<a href="./cookie/login.jsp">쿠키를 이용한 아이디 저장</a><br/>
	<a href = "./webstorage/login.jsp">웹 스토리지를 이용한 아이디 저장</a><br/>
	<a href="./error/input.jsp">에러 출력을 위한 입력 페이지</a><br/>
	
	<div id="content">
		<%
			//out.println("<a href='login.jsp'>로그인</a><br/>");
			
			// 로그인 여부는 session의 id 에 데이터가 있으면 로그인 한 것이고 없으면 로그인 안 한 것
			Object id = session.getAttribute("id");
			
			if (id == null) {
				out.println("<a href = 'login.jsp'>로그인</a><br/>");
			} else {
				out.println("<p>" + session.getAttribute("nickname") + "님</p>");
				out.println("<p><a href = ./logout.jsp>로그아웃</a></p>");
			}
		%>
	</div>
</body>
</html>