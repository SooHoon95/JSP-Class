package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsplec.bbs.dao.Dao_signUp;

public class SignUpSellerCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response,HttpSession session) {
		// TODO Auto-generated method stub

		String sId = request.getParameter("sId");
		String sPassword = request.getParameter("sPassword");
		String sName = request.getParameter("sName");
		String sTel = request.getParameter("sTel");
		String sBirth = ((request.getParameter("sBirthY")) + "-" +
				 		(request.getParameter("sBirthM")) + "-" +
				 		(request.getParameter("sBirthD")));
		String sEmail = (request.getParameter("sBirthD")) + (request.getParameter("cmailAddress"));
		String sPostalCode = (request.getParameter("sPostalCode"));
		String sAddress1 = request.getParameter("sAddress1");
		String sAddress2 = request.getParameter("sAddress2");
		String sShopName = request.getParameter("sShopName");
		String sNumber = request.getParameter("sNumber");
		
		Dao_signUp dao = new Dao_signUp();
		dao.writeSeller(sId, sPassword, sName, sBirth, sTel, sAddress1, sAddress2, sEmail, sShopName, sNumber, sPostalCode);
		
	}
}
