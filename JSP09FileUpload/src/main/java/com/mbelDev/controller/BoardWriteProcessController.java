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
public class BoardWriteProcessController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardWriteProcessController() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String author = request.getParameter("authorNM");
		String contents = request.getParameter("contents");
		BoardDto boardDto = new BoardDto();
		boardDto.setAuthor(author);
		boardDto.setContents(contents);
		BoardDao boardDao = new BoardDao();
		int result = boardDao.insertBoard(boardDto);
		if (result>0) {
			ScriptWriter.alert(response, "글 작성이 완료되었습니다.", "./list");
		}else {
			ScriptWriter.alert(response, "글 작성에 실패하였습니다.", "back");
		}
	}

}
