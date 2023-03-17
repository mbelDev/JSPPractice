package com.mbelDev.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mbelDev.model.BoardDao;
import com.mbelDev.model.BoardDto;
import com.mbelDev.utils.ScriptWriter;

@WebServlet("/board/writting")
public class BoardWrittingProcessController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardWrittingProcessController() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("실행은 됨");
		String author = request.getParameter("postAuth");
		String postPW = request.getParameter("postPW");
		String category = request.getParameter("postCTGR");
		String title = request.getParameter("postTitle");
		String contents = request.getParameter("postCont");
		BoardDto boardDto = new BoardDto();
		boardDto.setPostAuth(author);
		boardDto.setPostPW(postPW);
		boardDto.setPostCTGR(category);
		boardDto.setPostTitle(title);
		boardDto.setPostCont(contents);
		System.out.println(boardDto.toString());
		BoardDao boardDao = new BoardDao();
		int result = boardDao.insertBoard(boardDto);
		if (result>0) {
			ScriptWriter.alert(response, "글 작성이 완료되었습니다.", "./list");
		}else {
			ScriptWriter.alert(response, "글 작성에 실패하였습니다.", "back");
		}
	}

}
