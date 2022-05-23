package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.domain.PostDAO;
import com.smhrd.domain.PostVO;

public class DeletePostCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[DeletePostCon]");
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		//여기를 바꿔주면 다운받는 경로가 바뀜
		String savePath = "upload";
		//최대 업로드 파일 크기 10MB로 제한
		int uploadFileSizeLimit = 10 * 1024 * 1024;
		String encType= "UTF-8";
		ServletContext context = getServletContext();
		String uploadFilePath = context.getRealPath(savePath);
		
		try {
			MultipartRequest multi = new MultipartRequest(
					request, //request 객체
					uploadFilePath, // 서버상의 실제 디렉토리
					uploadFileSizeLimit, //최대 업로드 파일 크기
					encType, // 인코딩 방법
					// 동일한 이름이 존재하면 새 로운 이름이 부여됨
					new DefaultFileRenamePolicy());
			
			int pnum = Integer.parseInt(multi.getParameter("pnum"));
			System.out.println("게시글 번호 "+ pnum);
			
			PostDAO dao = new PostDAO();
			int cnt = dao.deletePost(pnum);
			
			if(cnt>0) {
				System.out.println("게시글 삭제 성공!");
			} else {
				System.out.println("게시글 삭제 실패!");
			}
		
			response.sendRedirect("post_view.jsp");
			
		}catch(Exception e) {
			System.out.println("예외발생 : "+ e);
		}
		
		
		
		
	}

}
