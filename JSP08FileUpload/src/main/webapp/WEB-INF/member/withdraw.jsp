<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<%@include file="../include/gnb.jsp" %>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<main class="main">
	<div class="container">
		<form action="withdraw_process.jsp" methode="POST">
			<div>
				<span>아이디</span><input type="text" name="userID" id="userID">
				<span>비밀번호</span><input type="password" name="userPW" id="userPW">
				<span>비밀번호 확인</span><input type="password" name="userPWconfirm" id="userPWconfirm">
			</div>
			<div>
				<button class="brn confirm">회원 탈퇴</button>
				<button class="btn return">취소</button>
			</div>
		</form>
		<script>
			$(".confirm").on("click", function() {
				console.log("QUERY!!!");
				if ($("#userID").val() === "") {
					alert("아이디를 입력 해 주세요.");
					$('userID').focuse();
				return false;
				}
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
		</script>
	</div>
</main>

<%@include file="../include/footer.jsp"%>