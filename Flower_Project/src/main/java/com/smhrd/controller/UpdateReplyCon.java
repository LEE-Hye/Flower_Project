package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.ReplyDAO;
import com.smhrd.domain.ReplyVO;

public class UpdateReplyCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.print("[UpdateReplyCon]");
		// post방식 데이터 전송 인코딩
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		ReplyVO reply = (ReplyVO)session.getAttribute("replyid");
		String replyid = reply.getReplyid();
		
		
	    String replycontent = request.getParameter("replycontent");
	    ReplyVO r_vo = new ReplyVO(replyid, replycontent);
	    
	    ReplyDAO dao = new ReplyDAO();
	    int cnt = dao.updateReply(r_vo);
	    
	    if(cnt>0) {
	    System.out.println("댓글수정성공");
	    session.setAttribute(replycontent, r_vo);
	    response.sendRedirect("detail_page.jsp");
	    }else {
	    System.out.println("댓글수정실패");
	    response.sendRedirect("post_view.jsp");
	    }
	}

}
