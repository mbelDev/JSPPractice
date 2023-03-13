<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String userID = request.getParameter("userID");
	String userPW = request.getParameter("userPW");
	
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "gundam";
	String pw = "EFSFsaikou0079";
	
	Connection conn = null;
	PreparedStatement psmt = null;
	
	String sql = "DELETE FROM MEMBER02 WHERE USERID = ? AND USERPW = ?";
	
	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, id, pw);
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, userID);
		psmt.setString(2, userPW);
		int result = psmt.executeUpdate();
		if (result>0) {
			out.println("<script>alert('그 동안 감사했습니다!');location.href='../main/mainpage.jsp';</script>");
			session.invalidate();
			response.sendRedirect("../main/mainpage.jsp");
		} else {
			out.println("<script>alert('아이디와 비밀번호를 확인 해 주세요.');history.back();</script>");
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if (psmt != null) {
			psmt.close();
		}
		if (conn != null) {
			conn.close();
		}
		//연결을 끊을떄는 역순으로. 아주 !important! 하다
	}
%>