<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String oneday = (String)request.getParameter("oneday");
	Cookie popCookie = new Cookie("oneday",oneday);
	popCookie.setPath(request.getContextPath());
	popCookie.setMaxAge(60);
	response.addCookie(popCookie);
	out.println(oneday);
	out.println(request.getParameter("sample_data"));
	out.println("FIRE2");
%>