

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GugudanForm")
public class GugudanForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 public GugudanForm() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset='UTF-8'>");
		out.println("<title>답할수?있는가 나는 : 당신의 질문 바로 구구단</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<p>이것은 n단 당신이 알고싶은 구구단</p>");
		out.println("<p>이것은 예이다 : [ 2 ]단</p>");
		out.println("<form action='/JSP01/GugudanResult' method='POST'><input type='text' name='letsGugu'><button>계산한다</button></form>");
		out.println("</body>");
		out.println("</html>");
	}

}
