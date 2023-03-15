<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file = "../include/header.jsp" %>
<link rel="stylesheet" href="../css/board.css">
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<%@include file="../include/gnb.jsp" %>

<main>
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
	height:300,
	callbacks:{
		onImageUpload:function(files){
			console.log("이미지 첨부 됨");
			console.log(files);
			
			for(let i=0 ; i<file.length l i++){
				uploadImage(files[i],this);
			}
			
		}
	}
})
function uploadImage(file,editor){
	const sendData = new FormData(); // key:value <form><input type="file" name="uploadFile"></fror>
	sendData.append("uploadFile",file);
	$.ajax({
		url:"../board/summernoteFiles"
		type:"POST",
		data:sendData,
		contentType:false, //enctype="x-www.form-urlencoded" 를 사용하지 않음. = multipart/data를 사용.
		processData:false // QueryString으로 날아가는것을 막음.
		success:function(response){
			console.log(response);
		},
		error:function(){
			console.log("파일 업로드 실패");
		}
	})
}}
</script>
<%@include file = "../include/footer.jsp" %>