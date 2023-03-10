<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String loggedUserNM = (String)session.getAttribute("userNM");
	String loggedUserID = (String)session.getAttribute("userID");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cleaner, we want you!!</title>
<script src="./js/jquery-3.6.3.min.js"></script>
<link rel="stylesheet" type="text/css" href="./css/reset.css" >
<link rel="stylesheet" type="text/css" href="./css/layout.css" >
</head>
<body>
	<header class="header">
		<div class="header_default">
			<div class="header_default__header-left">
				<h1 class="logo-header">Wellcome to my WORLD AGENTS!!</h1>
			</div>
			<div class="header_default__header-center">
				<nav class="gnb"></nav>
			</div>
			<div class="header_default__header-right">
				<h2 class="hidden"></h2>
				<% if(loggedUserID == null) {%>
				<ul class="list">
					<li><a href="./join_by_url.jsp">회원가입</a></li>
					<li><a href="./login_by_url.jsp">로그인</a></li>
				</ul>
				<%}else { %>
				<ul class="list">
					<li><a href="./info.jsp"><%=loggedUserNM %>님</a></li>
					<li><a href="./logout.jsp">로그아웃</a></li>
				</ul>
				<%} %>
			</div>
		</div>
	</header>