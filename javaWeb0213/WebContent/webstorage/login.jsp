<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./loginprocess.jsp" method="post" id="loginform">
		<label for="id">아이디</label>
		<input type="text" name="id" required="required" id="id"/><br/>
		<!-- required는 필수 입력임 -->
		
		<label for="pw">비밀번호</label>
		<input type="password" name="pw" required="required"/><br/>
		
		<input type="checkbox" name="idsave" value="idsave" id ="idsave"/>아이디저장<br/>
		<input type="submit" value="로그인" />
	</form>
	
	<script>
		// body에 있는 태그 찾아오기
		var loginform = document.getElementById("loginform");
		var ids = document.getElementById("id");
		var idsave = document.getElementById("idsave");
		
		// 폼의 데이터를 submit할 때
		loginform.addEventListener("submit", function(e) {
			// 아이디가 저장란에 체크되어 있지 않으면 아이디 입력값을 로컬 스토리징 저장
			// 아이디 저잘안에 체브 되어 있지 않으면 아이디 입력값을 로컬 스토리지에 제거
			if(idsave.checked == true) {
				lovalStorage["id"] = ids.value;
			} else {
				delete localStorage["id"];
			}
		});
		
		// 윈도가 로드될 때 아이디 저장 여부를 확인해서 존재하면 표시
		window.addEventListener("load", function(e) {
			if (localStorage["id"]) {
				ids.value = localStorage["id"];
				idsave.checked = true;
			} else {
				ids.value = "";
				idsave.checked = false;
			}
		});
	</script>
</body>
</html>