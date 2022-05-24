package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.ReplyDAO;
import com.smhrd.domain.ReplyVO;


public class SelectReplyCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[SelectReplyCon]");
		
		int pnum = Integer.parseInt(request.getParameter("pnum"));
		
		ReplyVO r_vo = new ReplyVO(pnum);
		ReplyDAO dao = new ReplyDAO();
		List<ReplyVO> reply = dao.selectReply(pnum);
		
		if(reply != null) {
			System.out.println("pnum가지고오기성공");
			HttpSession session = request.getSession();
			session.setAttribute("reply", reply);
			response.sendRedirect("detail_page.jsp");
		}else {
			System.out.println("가지고오기실패");
			response.sendRedirect("post_view.jsp");		
		}
		
	}

}
