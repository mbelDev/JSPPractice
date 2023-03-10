<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp" %>
<%@include file="../include/gnb.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");

	//DB에 연결
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "gundam";
	String pw = "EFSFsaikou0079";

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet result = null;
	
	String sql = "SELECT * FROM BOARD";
	
	try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url,id,pw);
		psmt = conn.prepareStatement(sql);
		result = psmt.executeQuery();
	%>
	

	 <main class="main">
	 	<p>list입니다.</p>
	 	<div class="container">
			<ul class="board">
					<%
				while(result.next()){
							out.println("<li class='board__list'>");
							out.println("<span class='board__list-no'>"+result.getInt("NO")+"</span>");
							out.println("<span class='board__list-title'><a href='view.jsp?idx="+result.getInt("NO")+"'>"+result.getString("SUBJECT")+"</a></span>");
							out.println("<span class='board__list-author'>"+result.getString("USERNM")+"</span>");
							out.println("<span class='board__list-date'>"+result.getString("USERDATE")+"</span>");
							out.println("</li>");
						}
					%>
			
			</ul>
			<button><a href="write.jsp">글쓰기</a></button>
		</div>
	 </main>
	<%
	}
	catch(Exception e){
		e.printStackTrace();
	}
	finally{
		if(psmt != null) psmt.close();
		if(conn != null) conn.close();
	}
	%>
<%@ include file="../include/footer.jsp" %>