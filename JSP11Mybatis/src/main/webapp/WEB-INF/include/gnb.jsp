<%@page import="com.mbelDev.model.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<body>
	<header class="header">
		<div class="container">
			<div class="header-left">
				<a href="../main/mainpage" class="header_left__logo logo-header">
					<h1 class="logo-img-header"></h1>
					<h1 class="logo-text-header">WE"RE CLEANER!!</h1>
				</a>
			</div>
			<div class="header-center">
				<ul class="header-center__gnb">
					<li class="header-center__gnb-mainmenu">
						<a href="#">우리는 누구?</a>
					</li>
					<li class="header-center__gnb-mainmenu">
						<a href="#">우리는 무엇을 하는가?</a>
					</li>
					<li class="header-center__gnb-mainmenu">
						<a href="#">우리의 시설들!</a>
					</li>
					<li class="header-center__gnb-mainmenu">
						<a href="../board/list">우리의 활동!</a>
					</li>
					<li class="header-center__gnb-mainmenu">
						<a href="#">우리를 찾아오라!</a>
					</li>
				</ul>
			</div>
			<div class="header-right">
				<h2 class="hidden"></h2>
				<c:choose>
					<c:when test="${empty loggedInfo}">
						<span class="btn-header btn-header-left join"><a href="../member/join">회원가입</a></span>
						<span class="btn-header btn-header-right login"><a href="../member/login">로그인</a></span>
					</c:when>
					<c:otherwise>
						<span class="btn-header btn-header-left info"><a href="../member/info?userID=${loggedInfo.userID}">${loggedInfo.userNM} 님</a></span>
						<span class="btn-header btn-header-right logout"><a href="../member/logout">로그아웃</a></span>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</header>