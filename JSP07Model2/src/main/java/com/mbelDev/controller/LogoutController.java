package com.mbelDev.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mbelDev.model.MemberDto;
import com.mbelDev.utils.ScriptWriter;

@WebServlet("/member/logout")
public class LogoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LogoutController() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("test");
		String goodbye="테스트";
		HttpSession session = request.getSession();
		session.removeAttribute("loggedInfo");
		System.out.println("제거됨");
		ScriptWriter.alert(response, goodbye+"님! 안녕히 가십시오!","../main/mainpage");
	}

}
