<%@page import="com.mbelDev.utils.CookieManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String userID = request.getParameter("userID");
String userPW = request.getParameter("userPW");
String rememberID = request.getParameter("rememberID");

String driver = "oracle.jdbc.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String id = "gundam";
String pw = "EFSFsaikou0079";

Connection conn = null;
PreparedStatement psmt = null;
ResultSet result = null;

String sql = "SELECT * FROM MEMBER02 WHERE USERID = ? AND USERPW = ?";

try{
	Class.forName(driver);
	conn = DriverManager.getConnection(url,id,pw);
	psmt = conn.prepareStatement(sql);
	psmt.setString(1,userID);
	psmt.setString(2,userPW);
	result = psmt.executeQuery();
	if(result.next()){
		String userNM = result.getString("USERNM");
		session.setAttribute("userNM", userNM);
		session.setAttribute("userID", userID);
		out.println("<script>alert("+rememberID+");history.back();</script>");
		out.println("<script>alert('"+userNM+"님, 환영합니다!')</script>");
		if(rememberID!=null && rememberID.equals("yes")) {
			Cookie rememberIDCookie = new Cookie("rememberIDCookie",userID);
			rememberIDCookie.setPath(request.getContextPath());
			rememberIDCookie.setMaxAge(60*60*24*30);
			response.addCookie(rememberIDCookie);
			
			
		}else{
			CookieManager.deleteCookie(response,"rememberID");
		}

		CookieManager.makeCookie(response,"aaa",rememberID,60*60);
		response.sendRedirect("../main/mainpage.jsp");
	}else{
		out.println("<script>alert('아이디와 비밀번호를 확인 해 주세요.');history.back();</script>");
	}
}catch(Exception e){
	e.printStackTrace();
}
finally{
	if(psmt!=null){	psmt.close();}
	if(conn!=null){	conn.close();}
	//연결을 끊을떄는 역순으로. 아주 !important! 하다
}

%>