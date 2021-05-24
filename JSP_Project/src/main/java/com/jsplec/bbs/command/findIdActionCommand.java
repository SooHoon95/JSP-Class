package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsplec.bbs.dao.Dao_findIdAction;
import com.jsplec.bbs.share.share;

public class findIdActionCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		// TODO Auto-generated method stub
		//값받아오기
		String findName = request.getParameter("findName");
		String findEmail = request.getParameter("findEmail");
		String findUserType = request.getParameter("findUserType");
		
		//찾은아이디 넣을 변수
		String findmsg = "";
		int findchk = 0;
		
		System.out.println(findName);
		System.out.println(findEmail);
		System.out.println(findUserType);
		
		
		try {
			
			if(findUserType.equals("구매회원")) {
				findUserType = "customer";
				Dao_findIdAction dao = new Dao_findIdAction();
				findchk = dao.findcId(findName, findEmail, findchk);
				
				session.setAttribute("findchk", findchk);
				session.setAttribute("findUserType", findUserType);
				session.setAttribute("findId", share.findId);
				
				//메세지정하기
				if(findchk == 0 ) {
					findmsg = "아이디를 찾을 수 없습니다.";
					session.setAttribute("findmsg", findmsg);
				}else {
					findmsg = "회원님의 아이디는 " + session.getAttribute("findId") + " 입니다.";
					session.setAttribute("findmsg", findmsg);
				}
				
				System.out.println("findchk =" + findchk);
				System.out.println("findId =" + share.findId);
				System.out.println("findmsg =" + session.getAttribute(findmsg));
				 
				
			}else if(findUserType.equals("판매회원")) {
				System.out.println(1);
				findUserType = "seller";
				Dao_findIdAction dao = new Dao_findIdAction();
				findchk = dao.findsId(findName, findEmail, findchk);
				
				session.setAttribute("findchk", findchk);
				session.setAttribute("findId", share.findId);
				session.setAttribute("findUserType", findUserType);
	
				//메세지정하기
				if(findchk == 0 ) {
					findmsg = "아이디를 찾을 수 없습니다.";
					session.setAttribute("findmsg", findmsg);
				}else {
					findmsg = "회원님의 아이디는 " + session.getAttribute("findId") + " 입니다.";
					session.setAttribute("findmsg", findmsg);
				}
				
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
		
		
	}

}
