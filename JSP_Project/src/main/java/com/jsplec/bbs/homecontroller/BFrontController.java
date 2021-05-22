package com.jsplec.bbs.Homecontroller;

import com.jsplec.bbs.command.CIdCheckCommand;
import com.jsplec.bbs.command.Command;
import com.jsplec.bbs.command.SIdCheckCommand;
import com.jsplec.bbs.command.SignUpCustomerCommand;
import com.jsplec.bbs.command.SignUpSellerCommand;
import com.jsplec.bbs.command.loginActionCommand;
import com.jsplec.bbs.share.share;

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
		//판매자 회원가입	
		case("/signupSeller.do"):
			command = new SignUpSellerCommand();
			command.execute(request, response, session);
			viewPage = "signupComplete.jsp";
			break;
		/*
		 * 판매자 아이디 중복체크
		 */
		case("/signupsIdCheck.do"):
			command = new SIdCheckCommand();
			command.execute(request, response, session);
			System.out.println("컨트롤러" + session.getAttribute("sIdchk"));
			System.out.println(session.getAttribute("sHIDDEN"));
			
			String sIdchkMessage;
			if((int)session.getAttribute("sIdchk") == 1) {
				sIdchkMessage = "이미 사용중인 아이디 입니다. 다른 아이디를 입력해주세요";
				session.setAttribute("sIdchkMessage", sIdchkMessage);
				}else {
				sIdchkMessage = "아이디를 사용할 수 있습니다. 계속해서 진행해 주세요.";
				session.setAttribute("sIdchkMessage", sIdchkMessage);
			}
			request.setAttribute("sIdchk", session.getAttribute("sIdkchk"));
			request.setAttribute("sIdchkMessage", session.getAttribute("sIdchkMessage"));
			request.setAttribute("sId", session.getAttribute("sId"));
			request.setAttribute("sHIDDEN", session.getAttribute("sHIDDEN"));
			
//			System.out.println(request.getAttribute("sIdchkMessage"));
//			System.out.print(request.getAttribute("sId"));
			System.out.println(request.getAttribute("sHIDDEN"));
			viewPage= "sIdCheckAlert.jsp";
			break;
		/*
		 * 구매자 아이디 중복체크
		 */
		case("/signupcIdCheck.do"):
			command = new CIdCheckCommand();
			command.execute(request, response, session);
			System.out.println(session.getAttribute("cIdchk"));
			
			String cIdchkMessage;
			if((int)session.getAttribute("cIdchk") == 1) {
				 cIdchkMessage = "이미 사용중인 아이디 입니다. 다른 아이디를 입력해주세요";
				session.setAttribute("cIdchkMessage", cIdchkMessage);
			}else {
				 cIdchkMessage = "아이디를 사용할 수 있습니다. 계속해서 진행해 주세요.";
				session.setAttribute("cIdchkMessage", cIdchkMessage);
			}
			request.setAttribute("cIdchk", session.getAttribute("cIdkchk"));
			request.setAttribute("cIdchkMessage", session.getAttribute("cIdchkMessage"));
			request.setAttribute("cId", session.getAttribute("cId"));
			request.setAttribute("cHIDDEN", session.getAttribute("cHIDDEN"));
			
//			System.out.println(request.getAttribute("cIdchkMessage"));
//			System.out.print(request.getAttribute("cId"));
			System.out.print(request.getAttribute("sHIDDEN"));
			viewPage= "cIdCheckAlert.jsp";
			break;
		/*
		 * 로그인 액션 처리
		 */
		case("/loginaction.do"):
			command = new loginActionCommand();
			command.execute(request, response, session);
			
			//Command에서 처리한 결과에 따라서 다른 viewPage로 연결
			if ((int)session.getAttribute("loginChkResult") == 0) {
				session.invalidate();
				viewPage = "loginFailMain.jsp";
//				viewPage = "sellerLoginFailMain.jsp";
				// 밧데리없어서 여기까지 함 
				// 두개는 다 똑같은데 체크박스 체크값만 다르다. userType if문으로 나눠서 보낼 것.
			}else {
				if(session.getAttribute("USERTYPE").equals("customer")) {
					viewPage = "main.jsp";
				}else {
					viewPage = "sellerStore.jsp";
				}
			}
			
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage); 
			dispatcher.forward(request, response);
				
		}
	
}//============
