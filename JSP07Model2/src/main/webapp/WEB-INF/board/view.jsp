<%@page import="com.mbelDev.utils.ScriptWriter"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<%@include file="../include/gnb.jsp" %>
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

String postNo = null;
String userNM = null;
String subject = null;
String contents = null;
String userDate = null;

String sql = "SELECT * FROM BOARD WHERE NO = ?";

try {
	Class.forName(driver);
	conn = DriverManager.getConnection(url, id, pw);
	psmt = conn.prepareStatement(sql);
	psmt.setString(1, idx);
	result = psmt.executeQuery();
	if (result.next()) {
		postNo = result.getString("NO");
		userNM = result.getString("userNM");
		subject = result.getString("subject");
		contents = result.getString("contents");
		userDate = result.getString("userDate");
	}
} catch (Exception e) {
	e.printStackTrace();
} finally {
	if (psmt != null)
		psmt.close();
	if (conn != null)
		conn.close();
}
%>


<main class="main">
	<p>view입니다.</p>
	<div class="post">
		<div class="container">
			<div>
				<button class="btn return">게시판으로 돌아가기</button>
			</div>
			<table>
				<tbody>
					<tr class="post-no">
						<td>No.</td>
						<th><%=postNo%></th>
					</tr>
					<tr class="post-title">
						<td>제목</td>
						<th><%=subject%></th>
					</tr>
					<tr class="post-author">
						<td>글쓴이</td>
						<th><%=userNM%></th>
					</tr>
					<tr class="post-date">
						<td>작성일자</td>
						<th><%=userDate%></th>
					</tr>
					<tr class="post-contents">
						<td>내용</td>
						<th><%=contents%></th>
					</tr>
				</tbody>
			</table>
			<div>
				<button>
					<a href="modify.jsp?idx=<%=idx%>">수정하기</a>
				</button>
				<button>
					<a href="delete.jsp?idx=<%=idx%>">삭제하기</a>
				</button>
				<button>
					<a href="list.jsp">돌아가기</a>
				</button>
			</div>
		</div>
	</div>
</main>

<%@ include file="../include/footer.jsp"%>