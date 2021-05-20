package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsplec.bbs.dao.Dao_cIdCheck;

public class CIdCheckCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		// TODO Auto-generated method stub
		String cId = request.getParameter("cId");
		int cIdchk = 0 ;
		
		System.out.println(cId);
		Dao_cIdCheck dao = new Dao_cIdCheck();
		
		int cIdchkResult = dao.IdcheckCustomer(cId, cIdchk);
		
		System.out.println("고객커맨드" + cIdchkResult);
		
		session.setAttribute("cIdchk", cIdchkResult);
		session.setAttribute("cId", cId);
		
	}

}
