<%@page import="com.mbelDev.utils.ScriptWriter"%>
<%@page import="java.sql.*"%>
<%@page import="com.mbelDev.utils.SqlConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	//데이터 수신
	String idx = request.getParameter("idx");
	String userPW = request.getParameter("userPW");
	String subject = request.getParameter("subject");
	String contents = request.getParameter("contents");

	//DB에 연결
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "gundam";
	String pw = "EFSFsaikou0079";

	Connection conn = null;
	PreparedStatement psmt = null;
	
	String sql = "UPDATE BOARD SET SUBJECT = ? , CONTENTS = ? WHERE NO = ? AND USERPW = ?";
	
	try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url,id,pw);
		psmt = conn.prepareStatement(sql);
		psmt.setString(1,subject);
		psmt.setString(2,contents);
		psmt.setString(3,idx);
		psmt.setString(4,userPW);
		int result = psmt.executeUpdate();
		if(result>0){
			ScriptWriter.alert(response,"글이 수정되었습니다.","list.jsp");
		}else{
			ScriptWriter.alert(response,"비밀번호가 일치하지 않습니다.","back");
		}
	}
	catch(Exception e){
		e.printStackTrace();
	}
	finally{
		if(psmt != null) psmt.close();
		if(conn != null) conn.close();
	}
%>