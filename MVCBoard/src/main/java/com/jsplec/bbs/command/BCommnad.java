package com.jsplec.bbs.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface BCommnad {
	
	// 메소드 이름만 정의
	public void execute(HttpServletRequest request, HttpServletResponse response); 
		
	
}
