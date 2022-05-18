package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.MemberDAO;
import com.smhrd.domain.MemberVO;

public class IdPwCheck extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      System.out.println("[IdPwCheck]");
      request.setCharacterEncoding("UTF-8");
      
      String name = request.getParameter("name");
      String birth = request.getParameter("birth");
      
      MemberVO m_vo = new MemberVO("12345","1234",name  ,birth);
      
      MemberDAO dao = new MemberDAO();
      MemberVO showMember = dao.selectNamePw(m_vo);
      
      if(showMember != null) {
         System.out.println("아이디비번확인성공");
         HttpSession session = request.getSession();
         session.setAttribute("showMember", showMember);
         //idpwResult.jsp
         response.sendRedirect("idpwResult.jsp");
      }else {
         System.out.println("아이디비번확인실패");
         response.sendRedirect("idpwck.jsp");
      }
      
   }

}