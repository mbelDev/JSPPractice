<%@page import="com.mbelDev.utils.ScriptWriter"%>
<%@page import="java.sql.*"%>
<%@page import="com.mbelDev.utils.SqlConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	//데이터 수신
	String userNM = request.getParameter("userNM");
	String subject = request.getParameter("subject");
	String userPW = request.getParameter("userPW");
	String contents = request.getParameter("contents");

	//DB에 연결
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "gundam";
	String pw = "EFSFsaikou0079";

	Connection conn = null;
	PreparedStatement psmt = null;
	
	String sql = "INSERT INTO BOARD VALUES(BOARD_SEQ.NEXTVAL, ?, ?, ?, ?, SYSDATE)";
	
	try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url,id,pw);
		psmt = conn.prepareStatement(sql);
		psmt.setString(1,userNM);
		psmt.setString(2,subject);
		psmt.setString(3,userPW);
		psmt.setString(4,contents);
		int result = psmt.executeUpdate();
		if(result>0){
			ScriptWriter.alert(response,"글이 작성되었습니다.","list.jsp");
		}else{
			ScriptWriter.alert(response,"서버 오류입니다. 잠시 뒤 다시 시도해보시길 바랍니다.","back");
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