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
		// 파라미터 읽기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String idsave = request.getParameter("idsave");
		
		/*if(idsave.equals("idsave")) {
			
		} else {
			
		}*/ // <- null.equals 하면 nullPointException 발생(null이 누군가를 호출해서 생기는 예외)
		
		// equals 사용 가능한 식 (상수를 왼쪽에 쓴다! nullPointException 예방)
		/*if("idsave".equals(idsave)) {
			
		} else {
			
		}*/
		
		// idsave란에 체크가 안되어 있으면 id라는 쿠키 삭제
		// idsave란에 체크가 되어있으면 쿠키에 입력한 id를 저장
		Cookie cookie = new Cookie("id", id);
		if (idsave == null) {
			cookie.setMaxAge(0);
		}
		response.addCookie(cookie);
		
		// 결과 페이지로 리다이렉트
		response.sendRedirect("./loginresult.jsp");

	%>
</body>
</html>