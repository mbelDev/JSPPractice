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
		String name = "아오리-시오카라즈";
	  	int age = 22;
  	%>
	<h1>HELLO JSP WORLD!!!</h1>
	<h1>
		<%
			out.println(name);
			out.println(age);
		%>
	</h1>
</body>
</html>