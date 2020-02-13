<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if("root".equals(id) && "1234".equals(pw)) {
			// 로그인 성공 - 회원정보를 세션에 저장하고 결과 페이지로 redirect
			session.setAttribute("id", "root");
			session.setAttribute("nickname", "관리자");
			
			// 메인 페이지로 리다이렉트
			response.sendRedirect("./");
		} else {
			// 로그인 실패 - 메시지를 세션에 저장하고 로그인 페이지로 redirect
			session.setAttribute("msg", "없는 아이디이거나 잘못된 비밀번호입니다.");
			response.sendRedirect("./login.jsp");
		}
	%>
</body>
</html>