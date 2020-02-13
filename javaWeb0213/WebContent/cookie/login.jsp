<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<%
		// 쿠키를 전부 가져오기
		Cookie [] cookies = request.getCookies();
		
		// 아이디와 체크박스에 출력할 문자열 변수
		String id = "";
		String check = "";
		// 쿠키가 1개라도 있다면
		if (cookies != null) {
			// 쿠키를 순회하면서 쿠키의 이름이 id인 것을 찾음
			for(Cookie cookie : cookies) {
				// 쿠키의 이름이 id라면 그 때 값을 id 변수에 저장
				// check에 체크박스 체크 여부를 저장
				if (cookie.getName().equals("id")) {
					// 저장한 id
					id = cookie.getValue();
					check = "checked='checked'";
					break;
				}
			}
		}
	%>

	<form action = "./loginprocess.jsp" method = "post">
		<label for="id">아이디</label>
		<input type="text" name="id" required="required" value='<%=id %>'/><br/>
		<!-- required는 필수 입력임 -->
		<label for="pw">비밀번호</label>
		<input type="password" name="pw" required="required"/><br/>
		
		<input type="checkbox" name="idsave" value="idsave" <%=check %>/>아이디저장<br/>
		<input type="submit" value="로그인"/>
	</form>
</body>
</html>