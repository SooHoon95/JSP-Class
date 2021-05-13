package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.BDao;

public class BUpdateCommand implements BCommnad {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		// 파라미터 받아오는 거
		String bName = request.getParameter("bName");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");

		String bId = request.getParameter("bId");
		BDao dao = new BDao();
		dao.update(bName, bTitle, bContent, bId);
	}

}
