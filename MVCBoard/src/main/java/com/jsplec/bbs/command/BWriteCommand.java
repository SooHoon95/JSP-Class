package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.BDao;

<<<<<<< HEAD
public class BWriteCommand implements BCommnad {
=======
public class BWriteCommand implements BCommand {
>>>>>>> parent of 240db0f (Delete MVCBoard/src/main directory)

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
<<<<<<< HEAD
		// jsp에서 만든 request임!
		String bName = request.getParameter("bName");
=======
		String bName = request.getParameter("bName"); // from (write_do.jsp)
>>>>>>> parent of 240db0f (Delete MVCBoard/src/main directory)
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		
		BDao dao = new BDao();
		dao.write(bName, bTitle, bContent);
		
<<<<<<< HEAD
=======
		
		
>>>>>>> parent of 240db0f (Delete MVCBoard/src/main directory)
	}

}
