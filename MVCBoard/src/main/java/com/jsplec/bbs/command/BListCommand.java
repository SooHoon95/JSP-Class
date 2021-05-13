package com.jsplec.bbs.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.dao.BDao;
import com.jsplec.bbs.dto.BDto;

public class BListCommand implements BCommnad {
	// 메인 없음!
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		// 모든 command의 메소드 이름은 execute!!!
		// DB에서 전체정보 읽어서 attribute로 jsp에 전달하기
		// 이제 dao도 만들러간다! (dao가 db에서 읽어서 여기에 줄 것이기 때문!)
		
		// 데이터 베이스 연결시킴 (다오는 연결시키는 애기 때문!)
		BDao dao = new BDao();
		// Arraylist 메소드 실행
		ArrayList<BDto> dtos = dao.list();
		// 이제 jsp에 보내줘야 함 (근데 get방식으로 넘기면 할 일이 많아짐 ? & 이거 계속 써야하기 때문!)
		request.setAttribute("list", dtos);
	}

}
