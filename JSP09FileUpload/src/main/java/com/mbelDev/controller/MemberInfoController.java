package com.mbelDev.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mbelDev.model.MemberDao;
import com.mbelDev.model.MemberDto;

@WebServlet("/member/info")
public class MemberInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public  MemberInfoController() {
		super();
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userID = request.getParameter("userID");
		MemberDao memberDao = new MemberDao();
		MemberDto memberDto = new MemberDto();
		memberDto = memberDao.getMemberInfo(userID);
		
		System.out.println(memberDto.toString());
		
		request.setAttribute("memberInfo",memberDto);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/member/info.jsp");
		dispatcher.forward(request,response);
	}
}
