<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<!-- include libraries(jQuery, bootstrap) -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="../summernote/summernote.min.css" rel="stylesheet">
<script src="../summernote/summernote.min.js"></script>
</head>
<body>
<form action="../board/writting" method="post">
		<table class="board">
			<colgroup>
				<col style="width: 20%;">
				<col style="width: 80%;">
			</colgroup>
			<tbody>
				<tr>
					<th>작성자</th>
					<td><input type="text" name="authorNM"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td>
						<textarea id="summernote" name="contents"></textarea>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="btns">
			<button class="btn confirm">확인</button>
			<button type="reset" class="btn reset">취소</button>
		</div>
		
	</form>
	
</main>
<script>
$("#summernote").summernote({
	height:300
})
</script>
</body>
</html>