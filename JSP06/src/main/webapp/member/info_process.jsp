<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String userID = (String)session.getAttribute("userID");
String userPW = request.getParameter("userPW");
String userNM = request.getParameter("userNM");
String userEM = request.getParameter("userEM");
String userHP = request.getParameter("userHP");

String driver = "oracle.jdbc.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String id = "gundam";
String pw = "EFSFsaikou0079";

Connection conn = null;
PreparedStatement psmt = null;

String sql = "UPDATE MEMBER02 SET userNM = ?, userPW = ?, userEM = ?, userHP = ? WHERE userID = ?";

try {
	Class.forName(driver);
	conn = DriverManager.getConnection(url, id, pw);
	psmt = conn.prepareStatement(sql);
	psmt.setString(1, userNM);
	psmt.setString(2, userPW);
	psmt.setString(3, userEM);
	psmt.setString(4, userHP);
	psmt.setString(5, userID);

	int result = psmt.executeUpdate();
	System.out.println(result);
	if (result > 0) {
		out.println("<script>alert('회원정보 수정이 성공적으로 완료되었습니다.'); location.href='../main/mainpage.jsp';</script>");
		System.out.println("Update Complate");
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