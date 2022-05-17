package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.MemberDAO;
import com.smhrd.domain.MemberVO;

/**
 * Servlet implementation class JoinCon
 */
public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("[JOINCON]");
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		
		MemberVO m_vo = new MemberVO(id,pw,name,birth);
		MemberDAO dao = new MemberDAO();
		int cnt = dao.insertMember(m_vo);
		
		if(cnt>0) {
			System.out.println("회원가입 성공");
			RequestDispatcher rd = request.getRequestDispatcher("main.html");
			request.setAttribute("JoinId", id);
			rd.forward(request, response);
		}else {
			System.out.println("회원가입 실패");
			response.sendRedirect("main.html");
		}
	}

}
