package com.mbelDev.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mbelDev.model.MemberDao;
import com.mbelDev.model.MemberDto;
import com.mbelDev.utils.ScriptWriter;

@WebServlet("/member/loginProcess")
public class LoginProcessController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginProcessController() {
        super();
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userID = request.getParameter("userID");
		String userPW = request.getParameter("userPW");
		MemberDao memberDao = new MemberDao();
		MemberDto memberDto = new MemberDto();
		MemberDto loggedInfo = new MemberDto();
		memberDto.setUserID(userID);
		memberDto.setUserPW(userPW);
		loggedInfo = memberDao.getLoggedMemberInfo(userID, userPW);
		
		if (loggedInfo != null) {
			session.setAttribute("loggedInfo", loggedInfo);
			ScriptWriter.alert(response, "로그인 되었습니다.","../main/mainpage");
		}else {
			ScriptWriter.alert(response,"아이디와 패스워드를 확인 해 주세요.", "back");
		}
	}

}

