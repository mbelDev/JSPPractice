<%@page import="com.mbelDev.utils.UserChecker"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userID = (String)request.getParameter("userID");
	if(UserChecker.idChecker(response,userID)){
		out.print("<script>alert('아이디 중복');</script>");
	}else{
		out.print("<script>alert('사용하실 수 있는 아이디 입니다.');</script>");
	}
		
	
%>