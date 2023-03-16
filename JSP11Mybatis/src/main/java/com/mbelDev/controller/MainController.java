package com.mbelDev.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mbelDev.model.FileDao;
import com.mbelDev.model.FileDto;
import com.mbelDev.model.Member;

@WebServlet(urlPatterns = {"/index/*"})
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MainController() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Member member = new Member();
		//member.setUserID("GUNDAM");
		//member.setUserNM("건담");
		//member.setUserNM("gundam.jpg");
		//member.setUserLV(99);
		//member.setUserEXP(3000);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/main/index.jsp");
		ArrayList<FileDto> fileList = new ArrayList<>();
		FileDao fileDao = new FileDao();
		fileList = fileDao.getAllFile();
		request.setAttribute("fileList", fileList);
		//request.setAttribute("member", member);
		dispatcher.forward(request,response);
	}

}
