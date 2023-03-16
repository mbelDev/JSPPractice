package com.mbelDev.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board/writetest")
public class BoardWriteTestContoller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardWriteTestContoller() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/board/write_test.jsp");
		dispatcher.forward(request, response);
	}

}
