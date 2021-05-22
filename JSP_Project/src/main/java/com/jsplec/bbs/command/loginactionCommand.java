package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsplec.bbs.dao.Dao_loginAction;

public class loginActionCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		// TODO Auto-generated method stub
		String loginId = request.getParameter("loginId");
		String loginPw = request.getParameter("loginPw");
		String userType = request.getParameter("userType");
		
		System.out.println(userType);
		
		
		if(userType == "구매회원") {
		
			Dao_loginAction dao = new Dao_loginAction();
			dao.customerLoginAction(loginId, loginPw);
			session.setAttribute("LOGINID", loginId);
			session.setAttribute("LOGINPW", loginPw);
		}else if(userType =="판매회원") {
			
		}
		
		
	}

}
