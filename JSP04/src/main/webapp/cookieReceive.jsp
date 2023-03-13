<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키를 받아보자</h1>
	<%
		Cookie[] cookies = request.getCookies();
	if(cookies!=null){
		for(Cookie item : cookies){
			String cookieName = item.getName();
			String cookieValue = item.getValue();
			out.println(cookieName+"==="+cookieValue+"<br>");
		}
	}
	%>
</body>
</html>