package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.ReplyDAO;
import com.smhrd.domain.ReplyVO;

/**
 * Servlet implementation class ReplyCon
 */
public class ReplyCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[REPLYCON]");
			request.setCharacterEncoding("UTF-8");
			
			int pnum = Integer.parseInt(request.getParameter("pnum"));
			String replyid = request.getParameter("replyid");
			String replycontent = request.getParameter("replycontent");
			
			System.out.println(replyid);
			
			
			ReplyVO r_vo = new ReplyVO(pnum, replyid, replycontent);
			
			System.out.println(r_vo.getpnum());
			System.out.println(r_vo.getReplyid());
			System.out.println(r_vo.getReplycontent());
			
			
			
			
			ReplyDAO dao = new ReplyDAO();
			int cnt = dao.insertReply(r_vo);
			System.out.println("cnt값확인"+cnt);
			 if(cnt>0) {
		         System.out.println("댓글 등록 성공");
		         RequestDispatcher rd = request.getRequestDispatcher("detail_page.jsp");
		         //request.setAttribute("replyid", replyid);
		         rd.forward(request, response);
		      }else {
		         System.out.println("댓글 등록 실패");
		         response.sendRedirect("main.jsp");
		      }
			
	}

}