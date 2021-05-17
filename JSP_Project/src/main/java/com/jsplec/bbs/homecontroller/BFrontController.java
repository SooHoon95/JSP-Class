package com.jsplec.bbs.Homecontroller;

import com.jsplec.bbs.command.Command;
import com.jsplec.bbs.command.SignUpCustomerCommand;
import com.jsplec.bbs.command.SignUpSellerCommand;
import com.jsplec.bbs.command.signupIdCheckCommand;
import com.jsplec.bbs.command.intCommand;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class BFrontController
 */
@WebServlet("*.do")
public class BFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
     * @see Command#execute(HttpServletRequest, HttpServletResponse)
     */
    public void execute(HttpServletRequest request, HttpServletResponse response)  { 
         // TODO Auto-generated method stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()");
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doPost()");
		actionDo(request, response);
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = uri.substring(conPath.length());
		
		String viewPage = null;
		Command command = null;
		intCommand intcommand = null;
		
		System.out.println(uri);
		System.out.println(conPath);
		System.out.println(com);
		
		switch(com) {
		
		case("/login.do"):
			viewPage = "Login_View.jsp";
			break;
		
		case("/signup.do"):
			command = new SignUpCustomerCommand();
			command.execute(request, response, session);
			viewPage = "signupComplete";
			break;
		case("/signupCustomer.do"):
			command = new SignUpCustomerCommand();
			command.execute(request, response, session);
			viewPage = "signupComplete.jsp";
			break;
		case("/signupSeller.do"):
			command = new SignUpSellerCommand();
			command.execute(request, response, session);
			viewPage = "signupComplete.jsp";
			break;
		case("/signupIdCheck.do"):
			command = new signupIdCheckCommand();
			command.execute(request, response, session);
			System.out.println(session.getAttribute("sIdkchk"));
			if(session.getAttribute("sIdchk") == "true") {
				String sIdchkResult = "이미 사용중인 아이디 입니다. 다른 아이디를 입력해주세요";
				session.setAttribute("sIdchkResult", sIdchkResult);
			}else {
				String sIdchkResult = "아이디를 사용할 수 있습니다.";
				session.setAttribute("sIdchkResult", sIdchkResult);
			}
			request.setAttribute("sIdchk", session.getAttribute("sIdkchk"));
			request.setAttribute("sIdchkResult", session.getAttribute("sIdchkResult"));
			System.out.println(session.getAttribute("sIdchkResult"));
			viewPage= "signupSeller.jsp"; 
			break;
			
			
			
			
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage); 
			dispatcher.forward(request, response);
				
		}
	
}//============
