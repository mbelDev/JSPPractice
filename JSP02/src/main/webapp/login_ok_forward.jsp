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
		out.println();
		String userID = request.getParameter("userID");
		String userPW = request.getParameter("userPW");
		String userName = "건담";
		pageContext.setAttribute("name","나는 PageContext로소이다"); // 단일 페이지에서만 유지
		request.setAttribute("name","나는 request로소이다"); //forward로 넘기면 유지
		session.setAttribute("name","나는 session이로소이다"); // session이 끊기지 않으면 유지
		application.setAttribute("name","나는 application이로소이다");// 서버 종료시까지 유기
		// DB에서 값 비교해서 있으면 다른 페이지로 보내기
		// 그렇지 않으면?? 경고(Alert)띄우기.
		if (userID.equals("gundam") && userPW.equals("EFSFsaikou0079")){

			request.setAttribute("userName","건캐논");
			request.setAttribute("userAge","0079");
			RequestDispatcher dispatcher = 
				request.getRequestDispatcher("login_sucess_forward.jsp");
			dispatcher.forward(request,response);
		}else{
			out.println("<script>alert('아이디, 패스워드를 확인하십시오.');history.back();</script>");
		}
	%>
</body>
</html>