<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 출력</title>
</head>
<body>
	<%
		// 예전 방법
		// request나 session에 저장된 attribute를 출력하기 위해서는 읽어와서 출력
		// -> 번거로움
		Object msg = request.getAttribute("msg");
		out.println("<p>" + msg + "</p>");
	%>
	
	<!-- 간편한 방법 -->
	<p>${msg}</p>
	
	<p>초기화 파라미터 : ${initParam.db}</p>
	
	<p>리스트 출력: ${list[0] }</p>
	<!-- list.add("List"); -->
	<p>맵(Map)출력: ${map.Encapsulation }</p>
	<!-- map.put("Encapsulation", "클래스와 인스턴스를 만드는 것"); -->
	<p>DTO 출력: ${item.name }</p>
	<!-- item.setName("딸기"); -->
</body>
</html>