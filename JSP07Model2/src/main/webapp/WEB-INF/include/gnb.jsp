<%@page import="com.mbelDev.model.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String loggedUserNM = "";
	String loggedUserID = "";
	MemberDto test = null;
	if ((MemberDto)session.getAttribute("loggedInfo")!=null){
		test = (MemberDto)session.getAttribute("loggedInfo");
		loggedUserNM = test.getUserNM();
		loggedUserID = test.getUserID();
	}
	System.out.println(test);
%>
</head>
<body>
	<header class="header">
		<div class="container">
			<div class="header-left">
				<h1 class="header_left__logo logo-header"><a href="../main/mainpage">WE"RE CLEANER!!</a></h1>
			</div>
			<div class="header-center">
				<ul class="header-center__gnb">
					<li class="header-center__gnb-mainmenu">
						우리는 누구?
					</li>
					<li class="header-center__gnb-mainmenu">
						우리는 무엇을 하는가?
					</li>
					<li class="header-center__gnb-mainmenu">
						우리의 시설들!
					</li>
					<li class="header-center__gnb-mainmenu">
						우리의 활동!
					</li>
					<li class="header-center__gnb-mainmenu">
						우리를 찾아오라!
					</li>
				</nav>
			</div>
			<div class="header-right">
				<h2 class="hidden"></h2>
				<% if(test == null) {%>
					<span class="join"><a href="../member/join">회원가입</a></span>
					<span class="login"><a href="../member/login">로그인</a></span>
				<%}else { %>
					<span class="info"><a href="../member/info?userID=<%=loggedUserID%>"><%=loggedUserNM %>님</a></span>
					<span class="logout"><a href="../member/logout">로그아웃</a></span>
				<%} %>

			</div>
		</div>
	</header>
