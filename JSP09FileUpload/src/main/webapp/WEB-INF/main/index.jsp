<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/layout.css" />
<link rel="stylesheet" href="./css/main.css" />
<link rel="stylesheet" href="./css/fullpage.css" />

<script src="./js/fullpage.extensions.min.js"></script>
</head>
<body>
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