<%@page import="com.mbelDev.utils.ScriptWriter"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userPW = request.getParameter("userPW");
	String idx = request.getParameter("idx");
	
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "gundam";
	String pw = "EFSFsaikou0079";

	Connection conn = null;
	PreparedStatement psmt = null;

	String sql = "DELETE FROM BOARD WHERE NO = ? AND USERPW = ?";

	try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url,id,pw);
		psmt = conn.prepareStatement(sql);
		psmt.setString(1,idx);
		psmt.setString(2,userPW);
		int result = psmt.executeUpdate();
		if(result>0){
			ScriptWriter.alert(response,"게시글이 삭제되었습니다.","list.jsp");
		}else{
			ScriptWriter.alert(response,"서버 오류입니다. 잠시 후 다시 시도해 주시길 바랍니다.");
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(psmt != null)psmt.close();
		if(conn != null)conn.close();
	}
%>