package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsplec.bbs.dao.Dao_signUpCustomer;

public class SignUpCustomerCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		// TODO Auto-generated method stub
		String cId = request.getParameter("cId");
		String cPassword = request.getParameter("cPassword");
		String cName = request.getParameter("cName");
		String cTel = request.getParameter("cTel");
		String cBirth = ((request.getParameter("cBirthY")) + "-" +
				 		(request.getParameter("cBirthM")) + "-" +
				 		(request.getParameter("cBirthD")));
		String cEmail = (request.getParameter("cEmail")) + (request.getParameter("cmailAddress"));
		String cNickname = request.getParameter("cNickname");
		String cPostalCode = (request.getParameter("cPostalCode"));
		String cAddress1 = request.getParameter("cAddress1");
		String cAddress2 = request.getParameter("cAddress2");
		
		Dao_signUpCustomer dao = new Dao_signUpCustomer();
//		dao.writeCustomer(cId, cPassword, cName, cBirth, cTel, cAddress1, cAddress2, cEmail, cNickname, cPostalCode);
		
		
		
	}

}
