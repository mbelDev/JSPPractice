<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userID = request.getParameter("userID");
	String userPW = request.getParameter("userPW");
	String userNM = request.getParameter("userNM");
	String userSX = request.getParameter("userSX");
	String userGR = request.getParameter("userGR");
	
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "gundam";
	String pw = "EFSFsaikou0079";
	
	Connection conn = null;
	PreparedStatement psmt = null;
	
	String sql = "insert into memberinfo (userID,userPW,userNM,userSX,userGR) values(?,?,?,?,?)";
	
	Class.forName(driver);
	conn = DriverManager.getConnection(url,id,pw);
	psmt = conn.prepareStatement(sql);
	psmt.setString(1,userID);
	psmt.setString(2,userPW);
	psmt.setString(3,userNM);
	psmt.setString(4,userSX);
	psmt.setString(5,userGR);
	int result = psmt.executeUpdate();
	System.out.println(result);
	if(result > 0 ){
		out.println("<script>alert('가입을 환영합니다.');</script>");
		System.out.println("Update Complate");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>내 세상에 온 걸 환영한다!!</h1>
</body>
</html>