<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file = "../include/header.jsp" %>
<link rel="stylesheet" href="../css/board.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../summernote/summernote.min.css">
<script src="../js/bootstrap.min.js"></script>
<script src="../summernote/summernote.min.js"></script>


<!DOCTYPE html>
<%@include file="../include/gnb.jsp" %>

<main>
		<span>${boardDto }</span>
		<table class="board">
			<colgroup>
				<col style="width: 20%;">
				<col style="width: 80%;">
			</colgroup>
			<tbody>
				<tr>
					<th>작성자</th>
					<td><span>${boardDto.author }</span></td>
				</tr>
				<tr>
					<th>작성일자</th>
					<td><span>${boardDto.regDate }</span></td>
				</tr>
				<tr>
					<th>내용</th>
					<td>
						
						<span>
							${boardDto.contents }
						</span>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="btns">
			<button class="btn confirm">확인</button>
			<button type="reset" class="btn reset">취소</button>
		</div>
		
	
</main>
<script>
$("#summernote").summernote({
	height:300
})
</script>
<%@include file = "../include/footer.jsp" %>