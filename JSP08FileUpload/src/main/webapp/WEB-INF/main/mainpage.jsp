<%@page import="com.mbelDev.model.FileDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@include file="../include/header.jsp"%>
<link rel="stylesheet" href="../css/main.css" />
<link rel="stylesheet" href="../css/swiper-bundle.min.css" />
<%@include file="../include/gnb.jsp"%>


<main class="main">
  <section class="main-visual">
    <div class="container">
      <h1 class="title">WE ARE CLEANER!!!!</h1>
    </div>
  </section>
  <section class="main-subTitle">
    <div class="container">
      <h1>WE HAVE A FIRE, FIRE IS ABLE TO CURE THIS DISEASE!!</h1>
		<ul>
			<c:forEach var="item" items="${fileList }">
			<li>${item }</li>
				<li>${item.no }</li>
				<li>${item.title }</li>
				<li>${item.category }</li>
				<li>${item.depth }</li>
				<li>${item.price }</li>
				<li>${item.fileImage }</li>
				<li>${item.fielRealImage }</li>
				<li><img src="${pageContext.request.contextPath}/uploadClock/${item.fielRealImage }"></li>
			</c:forEach>
		</ul>
    </div>
  </section>
</main>
<%@include file="../include/footer.jsp"%>
