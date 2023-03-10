<%@ page import="com.mbelDev.utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.popup {
	position: fixed;
	left: 100px;
	top: 100px;
	width: 400px; border : 1px solid #000;
	box-shadow: 10px 10px 10px rgba(0, 0, 0, 0.1);
	border: 1px solid #000;
}

.popup h2 {
	padding: 20px;
	background-color: #111;
	color: #fff;
	margin: 0;
}

.popup .contents {
	padding: 20px;
	background-color: #fff;
}
</style>
</head>
<body>
	<script src="./js/jquery-3.6.3.min.js"></script>
	<%
		String popupCheck = "on";
		String popupCookie = CookieManager.readCookie(request,"sevenday");
		if (popupCookie != null && popupCookie.equals("off")){ popupCheck = popupCookie; }
		if (popupCheck.equals("on")) {
	%>
	<div class="popup">
		<h2>공지사항</h2>
		<div class="contents">
			<p>공지사항 일까</p>
			<p>공지사항 일까</p>
			<p>공지사항 일까</p>
			<p>공지사항 일까</p>
			<p>공지사항 일까</p>
			<p>공지사항 일까</p>
		</div>
		<div>
			<input type="checkbox" name="sevenday" value="off" class="sevendayClose">
			이번 한 주 이 창을 열지 않기
			<button class="btn sevenday">닫기</button>
		</div>

	</div>
	<%
	}
	%>
	<script>
		
		$(".sevenday").on("click",()=>{
			
			const sample_data = $(".sevendayClose").val();
			$(".popup").hide();
			if($(".sevendayClose").is(':checked')){
				$.ajax({
					url:"sevenDayProcess.jsp",
					type:"GET",
					data:{"sevenday":sample_data},
					success:function(response){
						console.log(response);
					},
				});
				console.log(sample_data);
				console.log(typeof(sample_data));
			}
	
		return false;
		});
	</script>
</body>
</html>