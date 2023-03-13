<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String idx = request.getParameter("idx");
%>
<!DOCTYPE html>
<%@include file="../include/header.jsp" %>
<%@include file="../include/gnb.jsp" %>
<main class="main">
	<form action="deleteProcess.jsp" method="post">
		<input type="hidden" name="idx" value="<%= idx%>">
		<span>비밀번호</span><input type="password" name="userPW">
		<span><%=idx %></span>
		<div>
			<button class="btn delete">삭제
			</button>
			<button type="reset"><a href="view.jsp?idx=<%=idx%>">취소</a>
			</button>
			<button><a href="list.jsp">게시판으로 돌아가기</a>
			</button>
		</div>
	</form>
</main>
<%@include file="../include/footer.jsp" %>