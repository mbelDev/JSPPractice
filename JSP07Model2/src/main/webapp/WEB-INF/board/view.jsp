<%@page import="com.mbelDev.utils.ScriptWriter"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<%@include file="../include/gnb.jsp" %>

<main class="main">
	<p>view입니다.</p>
	<div class="post">
		<div class="container">
			<div>
				<button class="btn return">게시판으로 돌아가기</button>
			</div>
			<table>
				<tbody>
					<tr class="post-no">
						<td>No.</td>
						<th>${boardDto.postNo }</th>
					</tr>
					<tr class="post-title">
						<td>제목</td>
						<th>${boardDto.postTitle }</th>
					</tr>
					<tr class="post-author">
						<td>글쓴이</td>
						<th>${boardDto.postAuth }</th>
					</tr>
					<tr class="post-date">
						<td>작성일자</td>
						<th>${boardDto.regDate }</th>
					</tr>
					<tr class="post-contents">
						<td>내용</td>
						<th>${boardDto.postCont }</th>
					</tr>
				</tbody>
			</table>
			<div>
				<button>
					<a href="modify.jsp?idx=${postNo} }">수정하기</a>
				</button>
				<button>
					<a href="delete.jsp?idx=${postNo} }">삭제하기</a>
				</button>
				<button>
					<a href="list.jsp">돌아가기</a>
				</button>
			</div>
		</div>
	</div>
</main>

<%@ include file="../include/footer.jsp"%>