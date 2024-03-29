<%@page import="com.mbelDev.utils.CookieManager"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
<%@include file ="../include/header.jsp" %> 
<link rel="stylesheet" href="../css/member.css">
<%@include file="../include/gnb.jsp" %>
<main class="main">
  <section class="login">
    <div class="container center">
      <div class="login__title">
        <h1 class="login__title-txt">환영합니다 형제여! 우리는 CLEANERS 입니다!!</h1>
      </div>
      <div class="login__table">
        <form action="./loginProcess" method="POST">
          <div class="login__contents-table">
              <div class="item">
                <span class="login-txt">아이디</span>

                  <input
                    type="text"
                    class="login-input login-id"
                    name="userID"
                    id="userID"
                    value=""
                    placeholder="아이디를 입력해 주세요"
                  />
              </div>
              <div class="item">
                <span class="login-txt">비밀번호</span>
                <input
                  type="password"
                  class="login-input login-pw"
                  name="userPW"
                  id="userPW"
                  placeholder="비밀번호를 입력 해 주세요."
                />
              </div>
            </div>
          <div>
            <button class="btn confirm">로그인</button>
            <button class="btn join">
              <a href="./join">회원가입</a>
            </button>
            <input type="checkbox" name="rememberID" value="yes" /><span
              >아이디 기억하기</span
            >
          </div>
        </form>
      </div>
    </div>
  </section>
</main>
<script>
  //jQuery alias  $
  $(".confirm").on("click", function () {
    if ($("#userID").val() === "") {
      alert("아이디를 입력 해 주세요.");
      $("userID").focus();
      return false;
    }
    if ($("#userPW").val() === "") {
      alert("비밀번호를 입력 해 주세요.");
      $("userPW").focus();
      return false;
    }
  });
</script>
<%@include file = "../include/footer.jsp" %>
