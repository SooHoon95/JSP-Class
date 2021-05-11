package com.jsplec.base;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Response_04_01S
 */
@WebServlet("/Response_04_01S")
public class Response_04_01S extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Response_04_01S() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String siteName = request.getParameter("sitename");
		
		// 네이버는 다른 사이트라 Forward 못쓰고 response
		switch(siteName) {
			case "naver":
				response.sendRedirect("https://www.naver.com");
				break;
			case "daum":
				response.sendRedirect("https://www.daum.net");
				break;
			case "google":
				response.sendRedirect("https://www.google.com");
				break;
		}
	}

}
