

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GugudanResult
 */
@WebServlet("/GugudanResult")
public class GugudanResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GugudanResult() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		int numGugu = Integer.parseInt(request.getParameter("letsGugu"));
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset='UTF-8'>");
		out.println("<title>나는 해냈다 당신이 제출한 질문 : "+numGugu+" 단</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<p>보시길 희망한다 이것 나의 대답 당신의 질문의 역</p>");
		if (numGugu>0 && numGugu<10) {
			out.println("<p>[ "+numGugu+" ]단</p>");
			for(int i=1 ; i<10 ; i++) {
				out.println("<p>"+numGugu+" * "+i+" = "+ numGugu*i +"</p>");	
			}
		}else {
			out.println("<h1>[ "+numGugu+" ]단은 구구단이 아니라오!!</h1>");
		}
		out.println("<a href='/JSP01/Gugudan'><button>돌아가기</button></a>");
		out.println("</body>");
		out.println("</html>");
	}

}
