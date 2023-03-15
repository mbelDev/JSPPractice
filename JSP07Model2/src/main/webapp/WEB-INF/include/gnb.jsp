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
			<ul class="header-center__gnb gbn">
			  <li class="header-center__gnb-mainmenu mainMenu">
				<a href="#">우리는 누구?</a>
				<p class="mainMenu__back">
				  <span class="mainMenu__back-fill"></span>
				</p>
				<ul class="header-center__gnb-submenu subMenuContainer">
				  <li class="header-center__gnb-submenu subMenu">
					<a href="">
					  <p class="subMenu__txt">CLEANERS 인사말
						<span class="subMenu__line"></span>
					  </p>
					</a>
				  </li>
				  <li class="header-center__gnb-submenu subMenu">
					<a href="">
					  <p class="subMenu__txt">조직 이념
						<span class="subMenu__line"></span>
					  </p>
					</a>
				  </li>
				  <li class="header-center__gnb-submenu subMenu">
					<a href="">
					  <p class="subMenu__txt">CLEANERS에 대하여
						<span class="subMenu__line"></span>
					  </p>
					</a>
				  </li>
				  <li class="header-center__gnb-submenu subMenu">
					<a href="">
					  <p class="subMenu__txt">GREEN FLU에 대하여
						<span class="subMenu__line"></span>
					  </p>
					</a>
				  </li>
				  <li class="header-center__gnb-submenu subMenu">
					<a href="">
					  <p class="subMenu__txt">JOE FERRO에 대하여
						<span class="subMenu__line"></span>
					  </p>
					</a>
  
				  </li>
  
				</ul>
			  </li>
			  <li class="header-center__gnb-mainmenu mainMenu">
				<a href="#">우리는 무엇을 하는가?</a>
				<p class="mainMenu__back">
				  <span class="mainMenu__back-fill"></span>
				</p>
			  </li>
			  <li class="header-center__gnb-mainmenu mainMenu">
				<a href="#">우리의 시설들!</a>
				<p class="mainMenu__back">
				  <span class="mainMenu__back-fill"></span>
				</p>
			  </li>
			  <li class="header-center__gnb-mainmenu mainMenu">
				<a href="../board/list">우리의 활동!</a>
				<p class="mainMenu__back">
				  <span class="mainMenu__back-fill"></span>
				</p>
			  </li>
			  <li class="header-center__gnb-mainmenu mainMenu">
				<a href="#">우리를 찾아오라!</a>
				<p class="mainMenu__back">
				  <span class="mainMenu__back-fill"></span>
				</p>
				<ul class="header-center__gnb-submenu subMenuContainer">
				  <li class="header-center__gnb-submenu subMenu">
					<a href="">
					  <p class="subMenu__txt">오시는 길
						<span class="subMenu__line"></span>
					  </p>
					</a>
				  </li>
				  <li class="header-center__gnb-submenu subMenu">
					<a href="">
					  <p class="subMenu__txt">채용 정보
						<span class="subMenu__line"></span>
					  </p>
					</a>
				  </li>
				  <li class="header-center__gnb-submenu subMenu">
					<a href="">
					  <p class="subMenu__txt">채용 상담
						<span class="subMenu__line"></span>
					  </p>
					</a>
				  </li>
				</ul>
			  </li>
			</ul>
		  </div>
		  <div class="header-right">
			<h2 class="hidden"></h2>
			<span class="btn-header btn-header-left join">
			  <a href="../member/join">회원가입</a>
			</span>
			<span class="btn-header btn-header-right login">
			  <a href="../member/login">로그인</a>
			</span>
		  </div>
		</div>
	  </header>