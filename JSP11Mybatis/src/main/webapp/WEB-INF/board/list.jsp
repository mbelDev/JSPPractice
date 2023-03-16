<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file = "../include/header.jsp" %>
<link rel="stylesheet" href="../css/board.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script src="../js/bootstrap.min.js"></script>
<%@include file="../include/gnb.jsp" %>
<main>
	<h1>title</h1>
	<ul>
		<c:forEach items="${boardList }" var="item" varStatus="status" begin="0" end="5">
			<li>
				<span>${status.count}</span>
				<span>${item.author }</span>
				<span><a href="../board/view?postNo=${item.postno }">제목입니다.</a></span>
				<span>${item.regDate }</span>
				
			</li>
	<span>${item }</span>
		</c:forEach>
	</ul>
</main>
<%@include file="../include/footer.jsp" %>