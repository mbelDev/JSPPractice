<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String userID = request.getParameter("userID");
	String userPW = request.getParameter("userPW");
	System.out.println(userID+"==="+userPW);
	
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "gundam";
	String pw = "EFSFsaikou0079";
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	
	String sql = "SELECT * FROM MEMBERINFO WHERE USERID = ? AND USERPW = ?";
	
	Class.forName(driver);
	conn = DriverManager.getConnection(url,id,pw);
	psmt = conn.prepareStatement(sql);
	psmt.setString(1,userID);
	psmt.setString(2,userPW);
	rs = psmt.executeQuery();
	if(rs.next()){
		String _userID = rs.getString("USERID");
		String _userPW = rs.getString("USERPW");
		String _userNM = rs.getString("USERNM");
		String _userSX = rs.getString("USERSX");
		String _userGR = rs.getString("USERGR");
		session.setAttribute("name",_userNM);
		session.setAttribute("sex",_userSX);
		session.setAttribute("grade",_userGR);
		response.sendRedirect("login_ok.jsp");
		System.out.println(_userID+"==="+userPW);
	}else{
		out.println("<script>alert('아이디와 비밀번호를 확인해 주세요.');history.back();</script>");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>