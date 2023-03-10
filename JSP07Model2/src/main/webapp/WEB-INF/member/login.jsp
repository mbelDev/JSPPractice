<%@page import="com.mbelDev.utils.CookieManager"%> <%@ page language="java"
contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@include file =
"../include/header.jsp" %> <%@include file="../include/gnb.jsp" %>
<main class="main">
  <% String rememberID = ""; String temp = "null"; Cookie[] cookies =
  request.getCookies(); if (cookies != null) { for (Cookie item : cookies) { if
  (item.getName().equals("rememberIDCookie")) { rememberID = item.getValue();
  temp = CookieManager.readCookie(request, "rememberIDCookie"); } } }
  out.println("temp"+temp); %>
  <section class="login">
    <div class="container center">
      <div class="login__title">
        <h1 class="login__title-txt">환영합니다 형제여! 우리는 CLEANERS 입니다!!</h1>
      </div>
      <div class="login__table">
        <form action="./loginProcess" method="POST">
          <table>
            <colgroup>
              <col style="width: 20%" />
              <col style="width: 80%" />
            </colgroup>
            <tbody>
              <tr>
                <th>아이디</th>
                <td>
                  <input
                    type="text"
                    name="userID"
                    id="userID"
                    value="<%=rememberID %>"
                    placeholder="아이디를 입력해 주세요"
                  />
                </td>
              </tr>
              <tr>
                <th>비밀번호</th>
                <td>
                  <input
                    type="password"
                    name="userPW"
                    id="userPW"
                    placeholder="비밀번호를 입력 해 주세요."
                  />
                </td>
              </tr>
            </tbody>
          </table>
          <div>
            <button class="btn confirm">로그인</button>
            <button class="btn join">
              <a href="../member/join">회원가입</a>
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
