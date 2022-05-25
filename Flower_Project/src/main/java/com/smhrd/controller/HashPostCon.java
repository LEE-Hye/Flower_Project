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

public class HashPostCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[HashPostCon]");
		request.setCharacterEncoding("UTF-8");
		
		String fid = request.getParameter("flower_hash");		
		System.out.println(fid);
		
		PostVO p_vo = new PostVO();
		p_vo.setFid(fid);
		PostDAO dao = new PostDAO();		
		List<PostVO> hashList = dao.hashBoard(fid);
		
		
		if(hashList != null) {
			
			HttpSession session = request.getSession();
			session.setAttribute("hashList", hashList);
			response.sendRedirect("post_view_search.jsp");
			System.out.println("값가지고오기성공 ");
			
		}else {
			System.out.println("실패");
			response.sendRedirect("post_view.jsp");
		}
	}

}