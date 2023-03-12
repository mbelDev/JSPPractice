<%@page import="com.mbelDev.utils.UserChecker"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file = "../include/header.jsp" %>
<link rel="stylesheet" href="../css/member.css">
<%@include file="../include/gnb.jsp" %>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<main class="main">
	<div class="container center">
		<div class="info__title">
			<h1 class="info__title-txt">CLEANER와 함께 하십시오! 뉴욕은 거친 땅입니다!</h1>
		</div>
		<form action="./infoProcess" method="POST">
			<div class="info__contents-table">
				<div class="item">
					<span class="info-txt">아이디</span>
					<div class="item-group">
						<input type="text" class="info-input info-id" name="userID" placeholder="아이디를 입력 해 주세요.">
						<button class="btn idChecker">중복확인</button>
					</div>
				</div>
				<div class="item">
					<span class="info-txt">비밀번호</span>
					<input type="password" class="info-input info-pw" name="userPW" placeholder="비밀번호를 입력 해 주세요.">
				</div>
				<div class="item">
					<span class="info-txt">비밀번호 확인</span>
					<input type="password" class="info-input info-pw-confirm" name="userPWconfirm" placeholder="비밀번호를 한번 더 입력 해 주세요.">
				</div>
				<div class="item">
					<span class="info-txt">이름</span>
					<input type="text" class="info-input info-nm" name="userNM" placeholder="이름을 입력 해 주세요.">
				</div>
				<div class="item">
					<span class="info-txt">생년월일</span>
					<input type="text" class="info-input info-bd" name="userBD" placeholder="생년월일을 입력 해 주세요. ex 1992-05-14">
				</div>
				<div class="item">
					<span class="info-txt">연락처</span>
					<input type="text" class="info-input info-hp" name="userHP" placeholder="연락처를 입력 해 주세요.">
				</div>
				<div class="item">
					<span class="info-txt">이메일</span>
					<input type="text" class="info-input info-em" name="userEM" placeholder="이메일을 입력 해 주세요.">
				</div>
				<div class="item">
					<span class="info-txt">주소</span>
					<div class="item-group">
						<input type="text" class="info-input info-zip" placeholder="주소를 입력 해 주세요." readonly name="userZIP">
						<button class="btn ZIPCODE">검색</button>
					</div>
					<input type="text" class="info-input info-add add01" placeholder="주소를 입력 해 주세요." readonly name="userAD01">
					<input type="text" class="info-input info-add add02" name="userAD02">
					<input type="text" class="info-input info-add add03" name="userAD03">
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
	//jQuery alias  $
		// const userID = document.querySelector("#userID")
		// const userIDQuery = jQuery("#userID");
		// console.log(userID);
		// console.log(userIDQuery);


        $(".ZIPCODE").on("click",function(){
            new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    $(".add03").val(extraAddr);
                
                } else {
                    $(".add03").val("");
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                $(".info-zip").val(data.zonecode);
                $(".add01").val(addr);
                // 커서를 상세주소 필드로 이동한다.
                $(".add02").focus();
            }
        }).open();
        return false;
        });

        
        $(".idChecker").on("click",()=>{
        	const checkID = $(".info-id").val();
        	if (checkID != ""){
        		$.ajax({
        			url:"idCheck",
        			data:{userID : checkID},
        			success:function(response){
        				if(parseInt(response.count) === 0){
        					alert("사용하실 수 있는 아이디 입니다");
        					$(".info-id").attr("readonly",true);
        				}else{
        					alert("사용하실 수 없는 아이디 입니다.");
        					$(".info-id").val("");
        					$(".info-id").focus();
        				}
        				//Gson을 이용해 Json으로 받은 파일을 처리.
        			},
        			fail:function(error){
        				console.log(error);
        			}
        		});
        	}else{
        		alert("아이디를 입력 해 주세요!");
        		$(".info-id").focus();
        	}
        	return false;
        });
        
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