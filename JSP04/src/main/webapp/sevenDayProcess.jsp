<%@ page import="com.mbelDev.utils.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String sevenDay = request.getParameter("sevenday"); 
	if(sevenDay != null){
		CookieManager.makeCookie(response, "sevenday", "off", 60*60*24*7);
		out.println(response);
		out.println(sevenDay);			
	}
	out.println("FIRE02");
%>