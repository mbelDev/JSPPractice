<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@include file="../include/header.jsp" %>
<link rel="stylesheet" href="../css/board.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script src="../js/bootstrap.min.js"></script>
<%@include file="../include/gnb.jsp" %>

	 <main class="main">
	 	<p>list입니다.</p>
	 	<div class="container">
			<div class="board-title">
				<h1 class="board-title-txt">우리와 소통하십시오!</h1>
			</div>
			<div class="board-contents">
				<ul class="board-contents-container">
					<c:forEach items="${boardList }" var="item" varStatus="status" begin="0" end="3">
						<li class="list-item">
							<div class="list-item-postNo"><span>${status.count}</span></div>
							<div class="list-item-postTitle"><a href="../board/view?postNo=${item.postNo }"><span>${item.postTitle }</span></a></div>
							<div class="list-item-postAuth"><span>${item.postAuth }</span></div>
							<div class="list-item-postDate"><span>${item.regDate }</span></div>
						</li>
					</c:forEach>
				
				</ul>
				<button class="btn btn-write"><a href="../board/write">글쓰기</a></button>
			</div>
		</div>
	 </main>

<%@ include file="../include/footer.jsp" %>