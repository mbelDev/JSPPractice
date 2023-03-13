
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CheckBoxSender")
public class CheckBoxSender extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CheckBoxSender() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset='UTF-8'>");
		out.println("<title>답할수?있는가 나는 : 당신의 질문 바로 구구단</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>Check Box 데이터 송신하기</h1>");
		out.println("<p>선택한다 당신 관심분야 당신의</p>");
		out.println(
				"<form action='/JSP02/CheckBoxReceiver' method='POST'>"
				+ "<p>관심 분야를 선택하시길 바라옵니다.</p>"
				+ "<input type='checkBox' name='interest' value='자바'><span>자바</span>"
				+ "<input type='checkBox' name='interest' value='자바스크립트'><span>자바 스크립트</span>"
				+ "<input type='checkBox' name='interest' value='C++'><span>C++</span>"
				+ "<input type='checkBox' name='interest' value='파이썬'><span>파이썬</span>"
				+ "<button>계산한다</button></form>");
		out.println("</body>");
		out.println("</html>");

	}

}
