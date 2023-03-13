package com.mbelDev.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import java.util.Map;
import java.util.HashMap;
import com.mbelDev.model.MemberDao;

@WebServlet("/member/idCheck")
public class IdChecker extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public IdChecker() {
        super();
        System.out.println("일단 실행은 됨");
    }
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userID = request.getParameter("userID");
		MemberDao memberDao = new MemberDao();
		int result = memberDao.checkID(userID);
		System.out.println(result);
		Map<String,Integer> resultMap = new HashMap<>();
		resultMap.put("count",result); //{count:0}
		Gson gson = new Gson();
		String resultJson = (String)gson.toJson(resultMap);
		
		request.setAttribute("result",resultJson);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/member/idChecker.jsp");
		dispatcher.forward(request, response);
	}

}
