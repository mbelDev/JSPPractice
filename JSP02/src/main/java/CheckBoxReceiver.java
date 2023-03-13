

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CheckBoxReceiver")
public class CheckBoxReceiver extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public CheckBoxReceiver() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String[] interestList = request.getParameterValues("interest");
		PrintWriter out = response.getWriter();
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset='UTF-8'>");
		out.println("<title>답할수?있는가 나는 : 당신의 질문 바로 구구단</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>이것 관심분야이다 바로 당신의</h1>");
		out.println("<ul>");
		out.println("<span>"+interestList.length+"회 반복</span>");
		for(int i=0 ; i<interestList.length ;i++) {
			out.println("<li>"+interestList[i]+"</li>");
		}
		out.println("</ul>");
		out.println("</body>");
		out.println("</html>");
	}

}
