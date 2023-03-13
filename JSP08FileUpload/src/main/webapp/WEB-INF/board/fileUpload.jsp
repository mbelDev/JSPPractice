<%@page import="com.mbelDev.utils.UserChecker"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file = "../include/header.jsp" %>
<link rel="stylesheet" href="../css/member.css">
<%@include file="../include/gnb.jsp" %>

<main class="main">
	<div class="container center">
		<div class="info__title">
			<h1 class="info__title-txt">CLEANER와 함께 하십시오! 뉴욕은 거친 땅입니다!</h1>
		</div>
		<form action="./fileupload" method="POST" enctype="multipart/form-data">
			<div class="info__contents-table">
				<div class="item">
					<span class="info-txt">제목</span>
					<input type="text" class="title-input title" name="title" placeholder="제목을 입력 해 주세요.">
				</div>
				<div class="item">
					<span class="category">카테고리</span>
					<select name="category">
						<option value="bigbang">bigbang</option>
						<option value="classic fusion">classic fusion</option>
						<option value="deep sea">deep sea</option>
					</select>
				</div>
				<div class="item">
					<span>depth</span>
					<input type="text" name="depth" class="" placeholder="방수 깊이를 입력하세요.">
				</div>
					<div class="item">
					<span>price</span>
					<input type="text" name="price" class="" placeholder="가격을 입력하세요.">
				</div>
					<div class="item">
					<span>image</span>
					<input type="file" name="file" class="" placeholder="대표 이미지를 업로드하세요.">
				</div>
			</div>
			<div class="info__contents-btns">
				<button class="btn confirm">회원가입</button>
				<button type="reset">취소</button>
			</div>
		</form>
	</div>

	</main>
	
	<script>
        
        $(".confirm").on("click", function() {
            console.log("QUERY!!!");
			if ($(".info-id").val() === "") {
				alert("아이디를 입력 해 주세요.");
                $('info-id').focus();
				return false;
			}else
			if ($(".info-pw").val() === "") {
				alert("비밀번호를 입력 해 주세요.");
                $('info-pw').focus();
				return false;
			}else
			if ($(".info-pw-confirm").val() !== $(".info-pw").val()) {
				alert("비밀번호가 일치하지 않습니다.");
                $('info-pw-confirm').focus();
				return false;
			}
		});       

	</script>
<%@ include file="../include/footer.jsp" %>