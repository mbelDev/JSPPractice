<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String str01 = "jsp";
	String str02 = "향긋한 요원 구이 냄새";
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p> "내 세계에 온걸 환영한다 개새끼들아" </p>
	<p> 처음 만들어 보는 <%= str01 %> </p>
	<p> <%= str02 %></p>
	<p>
		<%
			out.println("뭔데 나는 "+str01+" 콘솔로그야.");
			for(int i=0 ; i<100 ; i++){
				out.print("여보세요");	
			}
		%>
	</p>
</body>
</html>