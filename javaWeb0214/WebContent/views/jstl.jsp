<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- JSTL의 core 기능을 사용하기 위한 태그 설정 -->
<!-- 나중에 모든 jsp파일에 필수적으로 들어간다고 생각하면 됨 -->
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- 변수 만들기 -->
<c:set var="num" value="200" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 이제 Java코드 안 씀! -->
	<p>${num }</p>
	
	<!-- 조건문 -->
	<c:if test="${num > 100 }">
		<p>크다</p>
	</c:if>
	
	<c:if test="${num <= 100 }">
		<p>작다</body>
	</c:if>
	
	<!-- jstl의 switch -->
	<!-- num이 100이면 실패, 200이면 성공 -->
	<c:choose>
		<c:when test="${num == 100 }">
			<p>실패</p>
		</c:when>
		<c:when test="${num == 200 }">
			<p>성공</p>
		</c:when>	
	</c:choose>
	
	<!-- forEach 반복문 -->
	<div>수량<select name = "cnt">
		<c:forEach var="cnt" begin="1" end="100" step="1">
			<option value="${cnt }" > ${cnt }</option>
		</c:forEach>
	</select></div>
	<!-- step 부분에 -1 (음수) 사용 불가, option으로 조정해야 함 -->
	<div>수량<select name = "cnt">
		<c:forEach var="cnt" begin="1" end="100" step="1">
			<option value="${100 - cnt }" > ${100 - cnt }</option>
		</c:forEach>
	</select></div>
</body>
</html>