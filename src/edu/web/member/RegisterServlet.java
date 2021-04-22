package edu.web.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register.do")
//.do는 서버사이드로 넘어간다 라고 생각
public class RegisterServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private static MemberDAO dao;
	
	public RegisterServlet() {
		dao = MemberDAOImple.getInstance();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doGet()");
		//url로 접근할 경우 경로 변경
		resp.sendRedirect("/Web07_JSP/11_db_connection/register.jsp");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doPost()");
		memberInsert(req,resp);
	}

	private void memberInsert(HttpServletRequest req, HttpServletResponse resp)  throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String userid = req.getParameter("userid");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		String emailAgree = req.getParameter("emailAgree");
		String[] interest = req.getParameterValues("interest");
		String phone = req.getParameter("phone");
		String introduce = req.getParameter("introduce");
		
	MemberVO vo = new MemberVO(userid, password, email, emailAgree, interest, phone, introduce);
	System.out.println(vo);
	
	int result = dao.insert(vo);
	System.out.println(result);
	
	if(result == 1) { //DB 저장에 성공하면 다른 페이지에 데이터(user id) 전송
		//요청받은 request를 포워딩하는 방법
		RequestDispatcher dispatcher = req.getRequestDispatcher("11_db_connection/result.jsp");
		req.setAttribute("vo", vo);
	}
	
	}// end memberInsert()
}
