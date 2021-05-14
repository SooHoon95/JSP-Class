package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.BDao;
import com.jsplec.bbs.dto.BDto;

<<<<<<< HEAD
public class BContentCommand implements BCommnad {
=======
public class BContentCommand implements BCommand {
>>>>>>> parent of 240db0f (Delete MVCBoard/src/main directory)

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
<<<<<<< HEAD
		String bId = request.getParameter("bId");
		
		BDao dao = new BDao();
		BDto dto = dao.contentView(bId);
=======
		String bid = request.getParameter("bid"); //from modify.do
		BDao dao = new BDao();
		BDto dto = dao.contentView(bid);
>>>>>>> parent of 240db0f (Delete MVCBoard/src/main directory)
		
		request.setAttribute("content_view", dto);
	}

}
