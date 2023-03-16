package com.mbelDev.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mbelDev.model.FileDao;
import com.mbelDev.model.FileDto;
import com.mbelDev.model.MemberDao;
import com.mbelDev.model.MemberDto;
import com.mbelDev.utils.ScriptWriter;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/fileupload")
public class FileUploadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public FileUploadController() {
    	super();
    }
    
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		int fileSize = 1024*1024*50; // 50Mb
		String encoding = "UTF-8"; // UTF-8로 인코딩
		DefaultFileRenamePolicy fileRenamePolicy = new DefaultFileRenamePolicy(); // 이름이 중복된 파일 처리
		
		String savePath = "uploadClock";
		ServletContext context = this.getServletContext(); 
		String realPath = context.getRealPath(savePath);
		
		File dir = new File(realPath);
		if(!dir.exists()) {
			dir.mkdir();
		}
		
		MultipartRequest multipartRequest = new MultipartRequest(request, realPath, fileSize, encoding, fileRenamePolicy);
		
		
		String title = multipartRequest.getParameter("title");
		String category = multipartRequest.getParameter("caegory");
		int depth = Integer.parseInt(multipartRequest.getParameter("depth"));
		int price = Integer.parseInt(multipartRequest.getParameter("price"));
		String originalFile = multipartRequest.getOriginalFileName("file");
		String renameFile = multipartRequest.getFilesystemName("file");
		System.out.println(originalFile+"==="+renameFile);
		
		FileDto fileDto = new FileDto();
		FileDao fileDao = new FileDao();
		
		fileDto.setTitle(title);
		fileDto.setCategory(category);
		fileDto.setDepth(depth);
		fileDto.setPrice(price);
		fileDto.setFileImage(originalFile);
		fileDto.setFielRealImage(renameFile);
		int result = fileDao.insertFile(fileDto);
		
		if(result > 0) {
			ScriptWriter.alert(response, "파일 업로드 성공","/index");
		}else {
			ScriptWriter.alert(response, "파일 업로드 실패","back");
		}
		

	}
}
