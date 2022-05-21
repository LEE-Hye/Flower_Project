package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.ReplyDAO;

public class DeleteReplyCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int reply_num = Integer.parseInt(request.getParameter("reply_num"));
		
		ReplyDAO dao = new ReplyDAO();
		int cnt = dao.deleteReply(reply_num);
		
		if(cnt>0) {
			System.out.println("댓글삭제 성공");
		}else {
			System.out.println("댓글삭제 실패");
		}
		response.sendRedirect("detail_page.jsp");
	}

}