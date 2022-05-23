package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.PostDAO;

public class DeletePostCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[DeletePostCon]");
		int pnum = Integer.parseInt(request.getParameter("pnum"));
		
		PostDAO dao = new PostDAO();
		int cnt = dao.deletePost(pnum);
		
		if(cnt>0) {
			System.out.println("게시글 삭제 성공!");
		} else {
			System.out.println("게시글 삭제 실패!");
		}
		response.sendRedirect("post_view.jsp");
	}

}
