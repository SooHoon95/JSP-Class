package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.BDao;

<<<<<<< HEAD
public class BDeleteCommand implements BCommnad {
=======
public class BDeleteCommand implements BCommand {
>>>>>>> parent of 240db0f (Delete MVCBoard/src/main directory)

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
<<<<<<< HEAD

		String bId = request.getParameter("bId");
		BDao dao = new BDao();
		dao.delete(bId);
	}
=======
		int bid = Integer.parseInt(request.getParameter("bid"));
		
		BDao dao =  new BDao();
		dao.delete(bid);
	}	
>>>>>>> parent of 240db0f (Delete MVCBoard/src/main directory)

}
