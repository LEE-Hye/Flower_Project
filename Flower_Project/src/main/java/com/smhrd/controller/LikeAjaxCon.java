package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.PostDAO;

public class LikeAjaxCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String status = request.getParameter("status");
		int pnum = Integer.parseInt(request.getParameter("pnum"));
		
		PostDAO dao = new PostDAO();
		int cnt = dao.updateLike(pnum, status);
		
		// 수정된 좋아요 갯수 다시 볼러오기
		int like = dao.getLike(pnum);
		
		PrintWriter out = response.getWriter();
		out.print(like);

	}

}