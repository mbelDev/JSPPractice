package com.mbelDev.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.mbelDev.model.FileDao;
import com.mbelDev.model.FileDto;
import com.mbelDev.utils.ScriptWriter;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/board/summernoteUpload")
public class BoardFileUploadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public BoardFileUploadController() {
    	super();
    }
    
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		int fileSize = 1024*1024*50; // 50Mb
		String encoding = "UTF-8"; // UTF-8로 인코딩
		DefaultFileRenamePolicy fileRenamePolicy = new DefaultFileRenamePolicy(); // 이름이 중복된 파일 처리
		
		String savePath = "summernoteFiles";
		ServletContext context = this.getServletContext(); 
		String realPath = context.getRealPath(savePath);
		
		File dir = new File(realPath);
		if(!dir.exists()) {
			dir.mkdir();
		}
		
		MultipartRequest multipartRequest = new MultipartRequest(request, realPath, fileSize, encoding, fileRenamePolicy);

		String fileRealName = multipartRequest.getFilesystemName("uoloadFile");
		
		System.out.println(fileRealName);
		
		String fileUploadeUrl = "/JSP09FileUpload/"+savePath+"/"+fileRealName;
		HashMap<String,String> fileUrlMap = new HashMap<>();
		fileUrlMap.put("fileUrl","fileUploadeUrl");
		Gson gson = new Gson();
		String fileUrl = gson.toJson(fileUrlMap);
		request.setAttribute("fileUrl",fileUrl);
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/board/summernoteUpload.jsp");
		dispatcher.forward(request, response);
		

	}
}
