package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.PostDAO;
import com.smhrd.domain.PostVO;
import com.smhrd.domain.ReplyDAO;
import com.smhrd.domain.ReplyVO;

/**
 * Servlet implementation class SelectPostCon
 */
public class SelectPostCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[SelectPostCon]");
		
		int pnum = Integer.parseInt(request.getParameter("pnum"));		
		
		PostVO p_vo = new PostVO(pnum);		
		PostDAO dao = new PostDAO();		
		PostVO post = dao.selectPost(pnum);
		ReplyDAO r_dao = new ReplyDAO();
		List<ReplyVO> r_vo = r_dao.selectAllReply();
		
		if(post != null) {
			System.out.println("값가지고오기성공 ");
			HttpSession session = request.getSession();
			session.setAttribute("post", post);
			response.sendRedirect("detail_page.jsp?="+r_vo.get(0).getpnum());
			
		}else {
			System.out.println("실패");
			response.sendRedirect("post_view.jsp");
		}
	}

}
