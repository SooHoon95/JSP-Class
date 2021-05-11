package com.jsplec.base;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class _03_CharacterTest_01S
 */
@WebServlet("/_03_CharacterTest_01S")
public class _03_CharacterTest_01S extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public _03_CharacterTest_01S() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String color = request.getParameter("color");
		String animal = request.getParameter("animal");
		String[] food = request.getParameterValues("food");
	
		
		PrintWriter writer = response.getWriter();
	
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title> 성격 테스트 </title>");
		writer.println("</head>");
		writer.println("<body>");

		writer.println("<h1> 성격테스트</h1>");
		writer.println(name + "님의 성격테스트 결과" + "<br>" + "<br>");

		writer.println(color+ "색을 좋아하는 당신은" + animal + " 그리고 ");
		
		for(int i=0; i>food.length; i++) {
			if(i<food.length -1) {
				writer.print(food[i] + "과");
			}else if(food.length -1 == i) {
				writer.print(food[i] + "을 좋아하는 성격입니다." + "<br>");
			}
		}
		
		writer.println("----------------------" + "<br> <br> " + "저장 되었습니다.!");
		
		
		writer.println("</body>");
		writer.println("</html>");
	
	
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
