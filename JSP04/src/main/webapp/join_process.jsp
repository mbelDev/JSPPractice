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
String userNM = request.getParameter("userNM");
String userEM = request.getParameter("userEM");
String userHP = request.getParameter("userHP");
int userZIP = Integer.parseInt(request.getParameter("userZIP"));
String userAD01 = request.getParameter("userAD01");
String userAD02 = request.getParameter("userAD02");
String userAD03 = request.getParameter("userAD03");
String address = userAD01 + userAD02 + userAD03;

String driver = "oracle.jdbc.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String id = "gundam";
String pw = "EFSFsaikou0079";

Connection conn = null;
PreparedStatement psmt = null;

String sql = "INSERT INTO MEMBER02 VALUES(MEMBER02_SEQ.NEXTVAL,?,?,?,?,?,?,?,SYSDATE)";

try{
	Class.forName(driver);
	conn = DriverManager.getConnection(url,id,pw);
	psmt = conn.prepareStatement(sql);
	psmt.setString(1,userID);
	psmt.setString(2,userPW);
	psmt.setString(3,userNM);
	psmt.setString(4,userEM);
	psmt.setString(5,userHP);
	psmt.setInt(6,userZIP);
	psmt.setString(7,address);
	
	int result = psmt.executeUpdate();
	System.out.println(result);
	if(result > 0){
		out.println("<script>alert('가입을 환영합니다.');</script>");
		System.out.println("Update Complate");
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