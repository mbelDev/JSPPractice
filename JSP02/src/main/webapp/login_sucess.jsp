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
		String userName = request.getParameter("userName");
	%>
	<h1>조선의 땅에 당도한 것을 환영하오 <%=userName %>,낯선이여.</h1>
</body>
</html>