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
				</nav>
			</div>
			<div class="header-right">
				<h2 class="hidden"></h2>
				<% if(test == null) {%>
					<span class="btn-header btn-header-left join"><a href="../member/join">회원가입</a></span>
					<span class="btn-header btn-header-right login"><a href="../member/login">로그인</a></span>
				<%}else { %>
					<span class="btn-header btn-header-left info"><a href="../member/info?userID=<%=loggedUserID%>"><%=loggedUserNM %>님</a></span>
					<span class="btn-header btn-header-right logout"><a href="../member/logout">로그아웃</a></span>
				<%} %>

			</div>
		</div>
	</header>
