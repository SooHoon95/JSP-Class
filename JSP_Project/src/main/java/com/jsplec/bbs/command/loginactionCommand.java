//xpackage com.jsplec.bbs.command;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import com.jsplec.bbs.dao.Dao_loginaction;
//
//public class loginactionCommand implements Command {
//
//	@Override
//	public void execute(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
//		// TODO Auto-generated method stub
//		String Id  = request.getParameter("id");
//		String Pw = request.getParameter("pw");
//		String[] userType = request.getParameterValues("userType");
//		String loginId = "";
//		
//		System.out.println(userType);
//		Dao_loginaction dao = new Dao_loginaction();
//		
//		
//	}
//
//}