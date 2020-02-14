<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록 보기</title>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<h2 align='center'>아이템 목록</h2>
	<table align='center' border='1'>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>가격</th>
		</tr>
		<!-- list라는 이름으로 저장된 데이터를 item이라는 변수에 하나씩 대입 -->
		<c:forEach var='item' items="${list}">
			<tr>
				<!-- item에 있는 목록들을 출력 -->
				<td>${item.num}</td>
				<!-- <td>${item.name}</td> -->
				<!-- 기본키 값을 url에 붙여서 만드는 방식 (최근에 쓰는 방식) -->
				<td><a href="./detail/${item.num}">${item.name}</a></td>
				<td>${item.price}</td>
			</tr>
		</c:forEach>
	</table>
	
	<!-- http://localhost:9000/javaWeb0214/views/list.jsp 여기서는 데이터 값이  보이지 않음 -->
</body>
</html>