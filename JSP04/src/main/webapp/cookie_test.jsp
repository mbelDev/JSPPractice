<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키 테스트</h1>
	<%
		Cookie cookie = new Cookie("myCookies","에이스");
		cookie.setPath(request.getContextPath());
		cookie.setMaxAge(60);
		response.addCookie(cookie);
		
		Cookie cookie02 = new Cookie("myCookies","빈츠");
		cookie.setPath(request.getContextPath());
		cookie.setMaxAge(600);
		response.addCookie(cookie);
	%>
</body>
</html>