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
		String userName = (String)request.getAttribute("userName"); //Objcet
		String userAge = (String)request.getAttribute("userAge");
	%>
	<h1>안녕하세요 <%=userName %>우리는 스위트 걸이에요</h1>
	<h1><%=userAge %>년에 우리는 지오니즘에 심취해 있었어요</h1>
	
</body>
</html>