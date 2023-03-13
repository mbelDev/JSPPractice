<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String idx = request.getParameter("idx");
	
	//DB에 연결
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "gundam";
	String pw = "EFSFsaikou0079";
	
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet result = null;
	
	String userNM = null;
	String subject = null;
	String contents = null;
	
	String sql = "SELECT * FROM BOARD WHERE NO = ?";
	
	try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url,id,pw);
		psmt = conn.prepareStatement(sql);
		psmt.setString(1,idx);
		result = psmt.executeQuery();
		if(result.next()){
			userNM =  result.getString("userNM");
			subject =  result.getString("subject");
			contents =  result.getString("contents");
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
<%@include file="../include/header.jsp" %>
<%@include file="../include/gnb.jsp" %>
	<form action="modifyProcess.jsp" method="POST">
		<table>
			<colgroup>
			<col style="width: 20%;">
			<col style="width: 80%;">
			</colgroup>
			<tbody>
				<input type="hidden" name="idx" value="<%= idx%>">
				<tr>
					<th>이름</th>
					<td><input type="text" name="userNM" value="<%=userNM %>" readonly></td>

				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="subject" value="<%=subject %>"></td>

				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="userPW"></td>

				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="contents" cols="30" rows="10" value="<%=contents %>"></textarea>
					</td>
				</tr>
			</tbody>
		</table>
		<div>
			<button class="btn confirm">확인</button>
			<button class="btn reset">취소</button>
		</div>
	</form>
<%@include file="../include/footer.jsp" %>