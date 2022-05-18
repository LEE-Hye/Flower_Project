package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.MemberDAO;

public class IdCheckCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ID중복체크하려는 서블렛
	      
	      String id = request.getParameter("userid");
	      
	      MemberDAO dao = new MemberDAO();
	      boolean check = dao.idCheck(id);
	      
	      PrintWriter out = response.getWriter();
	      out.print(check);
	      
	}

}
