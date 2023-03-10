<%@page import="com.mbelDev.utils.ScriptWriter"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./include/header.jsp" %>
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
	
	String sql = "SELECT * FROM BOARD WHERE NO = ?";
	
	try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url,id,pw);
		psmt = conn.prepareStatement(sql);
		psmt.setString(1,idx);
		result = psmt.executeQuery();
		if(result.next()){
	%>
	

	 <main class="main">
	 	<p>view입니다.</p>
	 	<div class="container">
			<ul class="board">
					<%
				if(result.next()){
							out.println("<li class='board__post'>");
							out.println("<div class='board__post-title'>");
							out.println("<span class='board__post-no'>No."+result.getInt("NO")+"</span>");
							out.println("<span class='board__post-title'>제목 : "+result.getString("SUBJECT")+"</span>");
							out.println("<span class='board__post-author'>글쓴이 : "+result.getString("USERNM")+"</span>");
							out.println("<span class='board__post-date'>작성일자 : "+result.getString("USERDATE")+"</span>");
							out.println("<div>");
							out.println("<div class='board__post-contents'>");
							out.println("<span class='board__post-contents'>글쓴이 : "+result.getString("CONTENTS")+"</span>");
							out.println("<div>");
							out.println("</li>");
						}else{
							ScriptWriter.alert(response,"페이지를 찾을 수 없습니다.","back");
						}
					%>
			
			</ul>
			<div>
				<button class="btn return">게시판으로 돌아가기</button>
			</div>
		</div>
	 </main>
	<%
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



<%@ include file="./include/footer.jsp" %>