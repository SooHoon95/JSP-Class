package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsplec.bbs.dao.Dao_IdCheck;

public class SIdCheckCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		// TODO Auto-generated method stub
		String sId = request.getParameter("sId");
		int sIdchk = 0 ;
		
		System.out.println(sId);
		Dao_IdCheck dao = new Dao_IdCheck();
		
		int sIdchkResult = dao.IdcheckSeller(sId, sIdchk);
		System.out.println("판매자커맨다" + sIdchkResult);
		session.setAttribute("sIdchk", sIdchkResult);
		session.setAttribute("sId", sId);
		
	}

}
