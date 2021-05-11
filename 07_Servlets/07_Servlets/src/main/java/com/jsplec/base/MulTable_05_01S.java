package com.jsplec.base;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MulTable_05_01S
 */
@WebServlet("/MulTable_05_01S")
public class MulTable_05_01S extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MulTable_05_01S() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=utf-8");	// html에 찍어줄 수 있게 선언, 한글 보이게 선언
		request.setCharacterEncoding("utf-8");					// 한글이 나오게끔 선언
		
		int num = Integer.parseInt(request.getParameter("num"));// 05_MulTable_01.jsp의 num 불러오기
		
		PrintWriter out = response.getWriter();					// printWriter = print 되게 할 수 있는 클래스 선언
		out.println("<html>");
		out.println("<head><title>" + num + " 단 - 결과 화면</title></head>");	// 입력한 숫자로 타이틀 적어주기
		out.println("<body>");
		// for문으로 구구단 출력
		for(int i=1; i<=9; i++) {
			out.println(num + " x " + i + " = " + (num * i) + "<br>");
		}
		out.println("</body>");
		out.println("</html>");
	}

}
