<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="POST" action="join_process.jsp">
		<div><span>아이디</span><input type="text" name="userID"></div>
		<div><span>비밀번호</span><input type="password" name="userPW"></div>
		<div><span>이름</span><input type="text" name="userNM"></div>
		<div><span>성별</span>
			<span>남성</span><input type="radio" name="userSX" value="남성">
			<span>여성</span><input type="radio" name="userSX" value="여성">
		</div>
		<div><span>학력</span>
			<select name="userGR">
					<option value="초졸">초졸</option>
					<option value="중졸">중졸</option>
					<option value="전문대졸">전문대졸</option>
					<option value="4년대졸">4년대졸</option>
					<option value="대학중퇴">대학중퇴</option>
			</select>
		</div>
		<div>
			<button type="submit">회원가입</button>
			<button type="reset">취소</button>
		</div>
	</form>
</body>
</html>
