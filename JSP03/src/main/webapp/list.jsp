<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String userID = request.getParameter("userID");
String userPW = request.getParameter("userPW");
System.out.println(userID + "===" + userPW);

String driver = "oracle.jdbc.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String id = "gundam";
String pw = "EFSFsaikou0079";

Connection conn = null;
PreparedStatement psmt = null;
ResultSet rs = null;

String sql = "SELECT * FROM MEMBERINFO";

Class.forName(driver);
conn = DriverManager.getConnection(url, id, pw);
psmt = conn.prepareStatement(sql);
rs = psmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<%
		while (rs.next()) {
		%>
		<li>
			<dl>
				<dt>ID</dt>
				<dd><%=rs.getString("USERID")%></dd>
			</dl>
			<dl>
				<dt>PW</dt>
				<dd><%=rs.getString("USERPW")%></dd>
			</dl>
			<dl>
				<dt>NAME</dt>
				<dd><%=rs.getString("USERNM")%></dd>
			</dl>
			<dl>
				<dt>GENDER</dt>
				<dd><%=rs.getString("USERSX")%></dd>
			</dl>
			<dl>
				<dt>GRADE</dt>
				<dd><%=rs.getString("USERGR")%></dd>
			</dl>
		</li>

		<%
		}
		%>
	</ul>
</body>
</html>