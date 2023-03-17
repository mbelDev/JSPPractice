<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@include file="../include/header.jsp" %>
<link rel="stylesheet" href="../css/board.css">
<%@include file="../include/gnb.jsp" %>

	 <main class="main">
	 	<p>list입니다.</p>
	 	<div class="container">
			<div class="board-title">
				<h1 class="board-title-txt">우리와 소통하십시오!</h1>
			</div>
			<div class="board-contents">
				<ul class="board__list">
					<c:forEach items="${boardList }" var="item" varStatus="status" begin="0" end="${pageInfo.listNum }">
						<li class="board__list-item">
							<span class="board__list-item-postNo">${status.count}</span>
							<span class="board__list-item-postTitle"><a href="../board/view?postNo=${item.postNo }">${item.postTitle }</a></span>
							<span class="board__list-item-postAuth">${item.postAuth }</span>
							<span class="board__list-item-postDate">${item.regDate }</span>
						</li>
					</c:forEach>
				
				</ul>
				<li class="btn btn-write"><a href="../board/write">글쓰기</a></li>
				<ul class="board__list-page">
					<li class="btn btn_pre"><a class="btn ${pageInfo.page == 1 ? 'off' : '' }" href="./list?page=1">처음 페이지</a></li>
					<li class="btn btn_pre"><a class="btn ${pageInfo.pagePre == 0 ? 'off' : '' }" href="./list?page=${pageInfo.pagePre}">이전 열 페이지</a></li>

					<c:forEach begin="${pageInfo.pageStart}" end="${pageInfo.pageEnd}" step="1" varStatus="status" var="page">
					
						<li class="board__list-page__num ${pageInfo.page==page ? 'active' : ''} }"><a href="./list?page=${pageInfo.page} }">${page}</a></li>
					</c:forEach>
					<li class="btn btn_nxt"><a class="btn ${pageInfo.pageNxt == 0 ? 'off' : '' } href="href="./list?page=${pageInfo.pageNxt}">다음 열 페이지</a></li>
					<li class="btn btn_nxt"><a class="btn ${pageInfo.page == pageInfo.pageEnd ? 'off' : '' } href="href="./list?page=${pageInfo.pageEnd}">마지막 페이지</a></li>
				</ul>
			</div>
		</div>
	 </main>

<%@ include file="../include/footer.jsp" %>