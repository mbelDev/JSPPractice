<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- jsp 내장 객체(out.request,response) -->
	<!-- model one 방식 -->
	<%
		out.println();
		String userID = request.getParameter("userID");
		String userPW = request.getParameter("userPW");
		String userName = "건담";
		// DB에서 값 비교해서 있으면 다른 페이지로 보내기
		// 그렇지 않으면?? 경고(Alert)띄우기.
		if (userID.equals("gundam") && userPW.equals("EFSFsaikou0079")){
			response.sendRedirect("login_sucess.jsp?userName=" + URLEncoder.encode(userName,"UTF-8"));
		}else{
			out.println("<script>alert('아이디, 패스워드를 확인하십시오.');history.back();</script>");
		}
	%>
</body>
</html>