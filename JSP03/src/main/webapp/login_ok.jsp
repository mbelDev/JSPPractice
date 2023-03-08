<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = (String) session.getAttribute("name");
	String sex = (String) session.getAttribute("sex");
	String grade = (String) session.getAttribute("grade");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인을 환영한다<%=name %>!!</h1>
	<h1>당신의 성별 : <%=sex %></h1>
	<h1>당신의 학력 : <%=grade %></h1>
	
</body>
</html>