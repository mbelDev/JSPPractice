<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file = "../include/header.jsp" %>
<link rel="stylesheet" href="../css/main.css" />
<link rel="stylesheet" href="../css/fullpage.css" />

<script src="../js/fullpage.extensions.min.js"></script>
<%@include file="../include/gnb.jsp" %>

	<h1>title</h1>
	<span>${fileList }</span>
	<div id="main" class="">
	 <c:forEach var="item" items="${fileList }">
      <div class="section" id="clock01" 
            style="background-image:url('${pageContext.request.contextPath}/uploadClock/${item.fielRealImage}')">
            <div class="info">
                <p class="category">${item.category }</p>
                <p class="title">
                    ${item.title }
                </p>
                <p class="depth">
                    ${item.depth }MM
                </p>
                <p class="price">
                    CHF ${item.price }
                </p>
            </div>
        </div>
        <p>${item} </p>
    </c:forEach>
    </div>
</body>
<script>
	new fullpage("#main");</script>
</html>