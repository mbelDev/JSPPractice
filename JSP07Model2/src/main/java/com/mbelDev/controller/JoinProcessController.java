package com.mbelDev.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mbelDev.model.MemberDao;
import com.mbelDev.model.MemberDto;
import com.mbelDev.utils.ScriptWriter;


@WebServlet("/member/joinProcess")
public class JoinProcessController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public JoinProcessController() {
        super();
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String userID = request.getParameter("userID");
		String userPW = request.getParameter("userPW");
		String userNM = request.getParameter("userNM");
		String userEM = request.getParameter("userEM");
		String userHP = request.getParameter("userHP");
		String userZIP = request.getParameter("userZIP");
		
		String userAD01 = request.getParameter("userAD01");
		String userAD02 = request.getParameter("userAD02");
		String userAD03 = request.getParameter("userAD03");
		String Address = userAD01 + userAD02 + userAD03; 
		
		MemberDto memberDto = new MemberDto();
		memberDto.setUserID(userID);
		memberDto.setUserPW(userPW);
		memberDto.setUserNM(userNM);
		memberDto.setUserEM(userEM);
		memberDto.setUserHP(userHP);
		memberDto.setUserZIP(Integer.parseInt(userZIP));
		memberDto.setUserAD(Address);
		
		memberDto.toString();
		
		MemberDao memberDao = new MemberDao();
		int result = memberDao.insertMember(memberDto); 
		if(result > 0) {
			ScriptWriter.alert(response, userNM+"님, 회원 가입을 환영 합니다!", "../main/mainpage");
		}else {
			ScriptWriter.alert(response, "회원가입 에러, 잠시 후 다시 시도해 주세요.", "back");
		}
	}

}
