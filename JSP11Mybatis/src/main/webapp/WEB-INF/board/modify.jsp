<%@page import="com.mbelDev.utils.CookieManager"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
<%@include file ="../include/header.jsp" %> 
<link rel="stylesheet" href="../css/board.css">
<!-- include libraries(jQuery, bootstrap) -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<script src="../js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="../summernote/summernote.min.css" rel="stylesheet">
<script src="../summernote/summernote.min.js"></script>
<%@include file="../include/gnb.jsp" %>
<main class="main">
	<div class="board__wirte-title">
		<h1 class="title board__write-title-txt"></h1>
	</div>
	<div class="board__write-contents">
		<form action="../board/writting" method="POST">
			<div class="board__wirte-input">
				<div class="board__write-input-title">
					<span class="board__write-input-title-txt">제목</span>
					<input type="text" class="board__write-input-txt" name="postTitle" value="">
				</div>
				<div class="board__write-input-author">
					<span class="board__write-input-title-txt">이름</span>
					<input type="text" class="board__write-input-txt" name="postAuth" value="${boardDto.author}" readonly>
				</div>
				<div class="board__write-input-postPW">
					<span class="board__write-input-title-txt">비밀번호</span>
					<input type="password" class="board__write-input-txt" name="postPW">
				</div>
				<div class="board__write-input-category">
					<span class="board__write-input-title-txt">분류</span>
					<select class="board__write-input-category" name="postCTGR">
						<option value="출동의뢰">출동의뢰</option>
						<option value="채용문의">채용문의</option>
					</select>
				</div>
				<div class="board__write-input-contents">
					<span class="board__write-input-title-txt">내용</span>
					<textarea class="board__write-input-txt" id="summernote" name="postCont" value="${boardDto.contents}"></textarea>
				</div>
			</div>

			<div class="board__modify-btns">
				<button class="btn btn-modify">확인</button>
				<button style="" class="btn btn-reset">취소</button>
			</div>
		</form>
	</div>
</main>
<script>
$(document).ready(function () {
	$("#summernote").summernote({
		height:300,
		callbacks:{
			onImageUpload:function(files){
				console.log("이미지 첨부 됨");
				console.log(files);
				
				for(let i=0 ; i<files.length ; i++){
					uploadImage(files[i],this);
				}
				
			}
		}
	})
	$("#summernote").summernote('code',  '${boardDto.contents}');

	function uploadImage(file,editor){
		
		const sendData = new FormData(); // key:value <form><input type="file" name="uploadFile"></fror>
		sendData.append("uploadFile",file);
		console.log("sendData"+sendData);
		$.ajax({
			url:"../board/summernoteUpload",
			type:"POST",
			data:sendData,
			contentType:false, //enctype="x-www.form-urlencoded" 를 사용하지 않음. = multipart/data를 사용.
			processData:false, // QueryString으로 날아가는것을 막음.
			success:function(response){
				console.log("response"+response);
				$(editor).summernote("editor.insertImage",response.fileUrl);
			},
			error:function(){
				console.log("파일 업로드 실패");
			}
		})
	}
})
</script>
<%@include file="../include/footer.jsp" %>