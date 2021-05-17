package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public interface intCommand {
	public int execute(HttpServletRequest request, HttpServletResponse response, HttpSession session);
}
