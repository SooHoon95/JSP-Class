package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsplec.bbs.dao.Dao_IdCheck;

public class signupIdCheckCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		// TODO Auto-generated method stub
		String sId = request.getParameter("sId");
		String sIdchk = "" ;
		
		Dao_IdCheck dao = new Dao_IdCheck();
		String chkResult = dao.IdchekckSeller(sId, sIdchk);
		session.setAttribute("sIdchk", chkResult);
	}

}
