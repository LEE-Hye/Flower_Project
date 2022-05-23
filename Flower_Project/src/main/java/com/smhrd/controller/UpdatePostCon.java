package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.domain.PostDAO;
import com.smhrd.domain.PostVO;

public class UpdatePostCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.print("[UpdatePostCon]");
		// post방식 데이터 전송 인코딩
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
		PostVO post = (PostVO)session.getAttribute("post");
		int pnum = post.getPnum();
		String savePath = "upload";
		int uploadFileSizeLimit = 10 * 1024 * 1024;
		String encType= "UTF-8";
		ServletContext context = getServletContext();
		String uploadFilePath = context.getRealPath(savePath);
		System.out.println("서버상의 실제 디렉토리 : ");
		System.out.println(uploadFilePath);
		PostDAO dao = new PostDAO();
		
		
		try {
			MultipartRequest multi = new MultipartRequest(
					request, //request 객체
					uploadFilePath, // 서버상의 실제 디렉토리
					uploadFileSizeLimit, //최대 업로드 파일 크기
					encType, // 인코딩 방법
					// 동일한 이름이 존재하면 새 로운 이름이 부여됨
					new DefaultFileRenamePolicy());

			String mid = multi.getParameter("mid");
			int hit = Integer.parseInt(multi.getParameter("hit"));
			String title = multi.getParameter("title");
			String content = multi.getParameter("content");
			String fid = multi.getParameter("fid");
			int plike = 0;
			// 업로드된 파일의 이름 얻기
			String sname = multi.getFilesystemName("photo");
			// 원본저장명
			String oname = multi.getOriginalFileName("photo");
			//서버저장위치
			String sload = uploadFilePath+ "\\"+ sname;


			if(sname == null) { // 파일이 업로드 되지 않았을때
				System.out.print("파일 업로드 되지 않았음");
			}else { // 파일이 업로드 되었을때
				System.out.println("파일 업로드가 됨");
			}

			// 객체에 넣기
			PostVO p_vo = new PostVO(mid, title, content, fid, plike, hit, oname, sname, sload);

			if(p_vo != null) {
				System.out.println("객체엔 맞게 들어감");
			}else {
				System.out.println("객체X");
			}


			//DAO
			int cnt = dao.insertPost(p_vo);

			if(cnt>0) {
		    	System.out.println("수정 성공");
//		        RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
//		        request.setAttribute("JoinId", id);
//		        rd.forward(request, response);
		        response.sendRedirect("datail_page.jsp");
		    }else {
		        System.out.println("수정 실패");
//		        response.sendRedirect("main.jsp");
		        response.sendRedirect("post_modify.jsp");
		      }


		}catch(Exception e) {
			System.out.println("예외발생 : "+ e);
		}




	}

}