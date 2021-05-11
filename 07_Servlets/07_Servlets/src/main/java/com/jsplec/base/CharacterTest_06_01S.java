package com.jsplec.base;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CharacterTest_06_01S
 */
@WebServlet("/CharacterTest_06_01S")
public class CharacterTest_06_01S extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CharacterTest_06_01S() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=utf-8");	// html에 찍어줄 수 있게 선언, 한글 보이게 선언
		request.setCharacterEncoding("utf-8");					// 한글이 나오게끔 선언
		
		String name = request.getParameter("name");
		String color = request.getParameter("color");
		String animal = request.getParameter("animal");
		String[] food = request.getParameterValues("food");
		
		PrintWriter out = response.getWriter();					// printWriter = print 되게 할 수 있는 클래스 선언
		out.println("<html>");
		out.println("<head></head>");	// 입력한 숫자로 타이틀 적어주기
		out.println("<body>");
		out.println("<h2>성격 테스트</h2>");
		out.println(name + "님의 성격 테스트 결과 <br> <br>");
		out.println(color + "색을 좋아하는 당신은 " + animal + " 그리고 ");
		for(int i=0; i<food.length; i++) {
			if(i == (food.length - 1)) {
				out.print(food[i]);
			}
			else {
				out.print(food[i] + "과 ");
			}
		}
		out.println("을 좋아하는 성격입니다. <br> <br>");
		out.println("--------------------------- <br>");
		out.println("저장되었습니다!");
		out.println("</body>");
		out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
