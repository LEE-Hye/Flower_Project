package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.PostDAO;
import com.smhrd.domain.PostVO;

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
		
		if(post != null) {
			System.out.println("값가지고오기성공 ");
			HttpSession session = request.getSession();
			session.setAttribute("post", post);
			response.sendRedirect("detail_page.jsp");
			
		}else {
			System.out.println("실패");
			response.sendRedirect("post_view.jsp");
		}
	}

}
