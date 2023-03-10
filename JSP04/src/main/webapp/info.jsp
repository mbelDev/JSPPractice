<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file = "./include/header.jsp" %>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<%
String userID = (String) session.getAttribute("userID");
String userPW = null;
String userNM = null;
String userEM = null;
String userHP = null;
int userZIP = 0;
String userAD = null;

String driver = "oracle.jdbc.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String id = "gundam";
String pw = "EFSFsaikou0079";

Connection conn = null;
PreparedStatement psmt = null;
ResultSet result = null;

String sql = "SELECT * FROM MEMBER02 WHERE USERID = ?";

try {
	Class.forName(driver);
	conn = DriverManager.getConnection(url, id, pw);
	psmt = conn.prepareStatement(sql);
	psmt.setString(1, userID);
	result = psmt.executeQuery();
	if (result.next()) {
		userPW = result.getString("USERPW");
		userNM = result.getString("USERNM");
		userEM = result.getString("USEREM");
		userHP = result.getString("USERHP");
		userZIP = result.getInt("USERZIP");
		userAD = result.getString("USERAD");

	} else {
		out.println("<script>alert('회원 정보를 찾을 수 없습니다.');history.back();</script>");
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
<main class="main">
	<form action="info_process.jsp" method="POST">
		<table>
			<colgroup>
				<col style="width: 20%">
				<col style="width: 80%">
			</colgroup>
			<tbody>
				<tr>
					<th>아이디</th>
					<td><p><%=userID%></p></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="userPW" id="userPW"
						></td>
				</tr>
								<tr>
					<th>비밀번호 확인</th>
					<td><input type="password" name="userPWconfirm" id="userPWconfirm"
						></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" value="<%=userNM%>" name="userNM" id="userNM"></td>
				</tr>
				<tr>
					<th>메일</th>
					<td><input type="text" value="<%=userEM%>" name="userEM" id="userEM"></input></td>
				</tr>
				<tr>
					<th>연락처</th>
					<td><input type="text" value="<%=userHP%>" name="userHP" id="userHP"></input></td>
				</tr>
				<tr>
					<th>주소</th>
					<td>
						<div>
							<input type="text" name="userZIP" id="userZIP"
								placeholder="주소를 입력 해 주세요." readonly>
							<button class="btn ZIPCODE">우편번호</button>
						</div>
						<div>
							<input type="text" name="userAD01" id="userAD01"
								placeholder="주소를 입력 해 주세요." readonly> <span>기본주소</span>
						</div>
						<div>
							<input type="text" name="userAD02" id="userAD02"
								placeholder="주소를 입력 해 주세요."> <input type="text"
								name="userAD03" id="userAD03" placeholder="참고사항.">
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<div>
			<button class="btn confirm">회원정보 수정</button>
			<button class="btn exit">회원탈퇴</button>
			<button class="btn return">취소</button>
		</div>
	</form>

</main>
<script>
$(".confirm").on("click", function() {
	console.log("QUERY!!!");
	if ($("#userPW").val() === "") {
		alert("비밀번호를 입력 해 주세요.");
        $('userPW').focuse();
	return false;
	}
	if ($("#userPWconfirm").val() !== $("#userPW").val()) {
		alert("비밀번호가 일치하지 않습니다.");
        $('userPWconfirm').focuse();
	return false;
	}
});
 $(".exit").on("click", function() {
	 	alert("본인 확인을 위하여 아이디, 비밀번호를 입력 해 주세요."); location.href='withdraw.jsp';
			return false;
		});
 </script>
<%@include file="./include/footer.jsp"%>