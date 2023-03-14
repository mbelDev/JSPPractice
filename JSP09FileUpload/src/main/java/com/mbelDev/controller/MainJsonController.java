package com.mbelDev.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.mbelDev.model.FileDao;
import com.mbelDev.model.FileDto;

@WebServlet("/MainJsonController")
public class MainJsonController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public MainJsonController() {
        super();
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<FileDto> fileList = null;
		FileDao fileDao = new FileDao();
		fileList = fileDao.getAllFile();
		
		Gson gson = new Gson();
		String fileJsonList = gson.toJson(fileList);
		
		request.setAttribute("fileList",fileJsonList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/main/mainpage.jsp");
		dispatcher.forward(request, response);
	}
}
