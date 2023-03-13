<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN FORWARD!!</title>
</head>
<body>
	<form method="POST" action="login_ok_forward.jsp">
		<div><input type="text" name="userID"></div>
		<div><input type="password" name="userPW"></div>
		<div>
			<button type="submit">Login</button>
			<button type="reset">Cancel</button>
		</div>
	</form>
</body>
</html>