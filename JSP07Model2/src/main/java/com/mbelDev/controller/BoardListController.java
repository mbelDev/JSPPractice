package com.mbelDev.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mbelDev.model.BoardDao;
import com.mbelDev.model.BoardDto;
import com.mbelDev.model.PageInfo;
import com.mbelDev.model.PageInfoDao;

@WebServlet("/board/list")
public class BoardListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardListController() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDao boardDao = new BoardDao();
		PageInfo pageInfo = new PageInfo();
		PageInfoDao pageInfoDao = new PageInfoDao();

		
		int page = 1;
		if(request.getParameter("page") != null) {
			 page = Integer.parseInt(request.getParameter("page"));
		}//현재 페이지
		int total = boardDao.getTotal();
		int listNum = 10; // 페이지에 한 번에 나타날 글 갯수
		int pageNum = 10; // 페이지 목록에 한 번에 나타낼 갯수
		
		pageInfo = pageInfoDao.setData(page,total,listNum,pageNum);
		
		int start = pageInfo.getStart();
		int end = pageInfo.getEnd();
		
		System.out.println(pageInfo.toString()+"/"+pageInfo.getStart()+"/"+pageInfo.getEnd());
		
		ArrayList<BoardDto> boardList = (ArrayList<BoardDto>)boardDao.getBoardPage(start, end);
		request.setAttribute("boardList",boardList);
		request.setAttribute("pageInfo", pageInfo);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/board/list.jsp");
		dispatcher.forward(request, response);
	}

}
