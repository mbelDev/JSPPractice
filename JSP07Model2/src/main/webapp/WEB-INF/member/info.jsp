<%@page import="com.mbelDev.model.MemberDto"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file = "../include/header.jsp" %>
<%@include file="../include/gnb.jsp" %>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<main class="main">
	<div class="container">
		<form action="./infoProcess" method="POST">
			<table>
				<colgroup>
					<col style="width: 20%">
					<col style="width: 80%">
				</colgroup>
				<tbody>
					<tr>
						<th>아이디</th>
						<td><p>${memberInfo.userID}</p></td>
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
						<td><input type="text" value="${memberInfo.userNM}" name="userNM" id="userNM"></td>
					</tr>
					<tr>
						<th>메일</th>
						<td><input type="text" value="${memberInfo.userEM}" name="userEM" id="userEM"></input></td>
					</tr>
					<tr>
						<th>연락처</th>
						<td><input type="text" value="${memberInfo.userHP}" name="userHP" id="userHP"></input></td>
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
	</div>

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
<%@include file="../include/footer.jsp"%>