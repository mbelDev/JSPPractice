<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String loggedUserNM = (String)session.getAttribute("userNM");
	String loggedUserID = (String)session.getAttribute("userID");
%>
</head>
<body>
	<header class="header">
		<div class="container">
			<div class="header-left"></div>
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
				<% if(loggedUserID == null) {%>
					<span class="join"><a href="../member/join.jsp">회원가입</a></span>
					<span class="login"><a href="../member/login.jsp">로그인</a></span>
				<%}else { %>
					<span class="info"><a href="../member/info.jsp"><%=loggedUserNM %>님</a></span>
					<span class="logout"><a href="../member/logout.jsp">로그아웃</a></span>
				<%} %>

			</div>
		</div>
	</header>
