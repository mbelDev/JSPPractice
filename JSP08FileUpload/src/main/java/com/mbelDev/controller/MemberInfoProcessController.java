package com.mbelDev.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mbelDev.model.MemberDao;
import com.mbelDev.model.MemberDto;
import com.mbelDev.utils.ScriptWriter;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/member/infoProcess")
public class MemberInfoProcessController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberInfoProcessController() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		int fileSize = 1024*1024*50; // 50Mb
		String encoding = "UTF-8"; // UTF-8로 인코딩
		DefaultFileRenamePolicy fileRenamePolicy = new DefaultFileRenamePolicy(); // 이름이 중복된 파일 처리
		
		String savePath = "uploadProfile";
		ServletContext context = this.getServletContext(); 
		String realPath = context.getRealPath(savePath);
		
		File dir = new File(realPath);
		if(!dir.exists()) {
			dir.mkdir();
		}
		
		MultipartRequest multipartRequest = new MultipartRequest(request, realPath, fileSize, encoding, fileRenamePolicy);
		
		String userID = multipartRequest.getParameter("userID");
		String userPW = multipartRequest.getParameter("userPW");
		String userNM = multipartRequest.getParameter("userNM");
		String userEM = multipartRequest.getParameter("userEM");
		String userHP = multipartRequest.getParameter("userHP");
		String userZIP = multipartRequest.getParameter("userZIP");
		
		String userAD01 = multipartRequest.getParameter("userAD01");
		String userAD02 = multipartRequest.getParameter("userAD02");
		String userAD03 = multipartRequest.getParameter("userAD03");
		String Address = userAD01 +"/"+ userAD02 +"/"+ userAD03;
		String userIcon = multipartRequest.getOriginalFileName("userICON");
		String userIconReal = multipartRequest.getFilesystemName("userICON");
		File originalIcon = new File(realPath+"\\"+userIconReal);
		File renamedIcon = new File(realPath+"\\"+userID+".jpg");
		
		originalIcon.renameTo(renamedIcon);
		userIconReal = userID+".jpg";
		
		MemberDto memberDto = new MemberDto();
		MemberDao memberDao = new MemberDao();
		
		memberDto.setUserID(userID);
		memberDto.setUserPW(userPW);
		memberDto.setUserNM(userNM);
		memberDto.setUserEM(userEM);
		memberDto.setUserHP(userHP);
		memberDto.setUserZIP(Integer.parseInt(userZIP));
		memberDto.setUserAD(Address);
		memberDto.setUserIcon(userIcon);
		memberDto.setUserIconReal(userIconReal);
		
		String target_url = "../member/info?userID="+userID;
		int result = memberDao.updateMember(memberDto);
		
		if(result > 0) {
			ScriptWriter.alert(response, "회원정보가 성공적으로 수정되었습니다.",target_url);
		}else {
			ScriptWriter.alert(response, "일시적인 장애입니다. 잠시 후 다시 시도해 주세요.","back");
		}
	}


}
