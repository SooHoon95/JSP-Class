package com.jsplec.base;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Hello
 */

// 서블랫은 확장자가 안나와서 해킹을 할 수 없다
// 여기서 원래 프로그램 이름은 Hello지만 다른걸로 바꿀 수 있음
// "/Hello" -> "/Hell"로 변경
@WebServlet("/Hell")
public class Hello_01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hello_01() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    // get방식의 form은 이 메소드를 불러 출력함
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 웹에는 안뜨고 콘솔에만 나옴
		System.out.println("Hello World!");
		
		// 웹에 나오게 쓰기
		// 쓰는거니까 response
		// text/html; 화면에 찍어주는 애
		// charset=UTF-8 한글 나오게 해주는 애
		// jsp도 상단에 이게 선언되어있어서 화면에 찍어줄 수 있는거임
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter writer = response.getWriter();	// jsp처럼 PrintWriter 클래스 불러오기
		writer.println("<html>");					// println으로 html에 쓰는것처럼 "" 안에 쓰기
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1>Hello World!</h1>");
		writer.println("Get 방식이 호출되었습니다.");
		writer.println("</body>");
		writer.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	// post방식의 form은 이 메소드를 불러 출력함
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1>Hello World!</h1>");
		writer.println("Post 방식이 호출되었습니다.");
		writer.println("</body>");
		writer.println("</html>");
	}

}
