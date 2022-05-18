package com.smhrd.domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MemberDAO {
   
   SqlSessionFactory sqlSessionFactory=SqlSessionManager.getSqlSession();
   SqlSession sqlSession = sqlSessionFactory.openSession();

   //회원가입 기능
   public int insertMember(MemberVO member) {
      SqlSession sqlSession =sqlSessionFactory.openSession();
      int cnt = 0;
      
      try {
         cnt = sqlSession.insert("com.smhrd.domain.MemberDAO.insertMember",member);
         if(cnt>0) {
            sqlSession.commit();
         }else {
            sqlSession.rollback();
         }
           
      }catch(Exception e) {
         e.printStackTrace();
      }finally {
         sqlSession.close();
      }
      return cnt;
   }
   
   
   //로그인 기능
   public MemberVO selectMember(MemberVO member) {
	   MemberVO loginMember = null;
	   try {
		   loginMember = sqlSession.selectOne("com.smhrd.domain.MemberDAO.selectMember", member);
		   System.out.println(loginMember);
		   
		   if(loginMember != null) {
			   System.out.println("커밋");
			   sqlSession.commit();
		   }else {
			   System.out.println("실패");
			   sqlSession.rollback();
		   }
	   } catch(Exception e) {
		   e.printStackTrace();
	   }finally {
		sqlSession.close();
	}
	   return loginMember;
   }
   
   
// id 중복체크하기
   public boolean idCheck(String id) {
      SqlSession sqlSession =sqlSessionFactory.openSession();
      boolean check = false;
      
      try{
        //id2 <- 이미 있는 이메일 입력할 경우에는 해당하는 이메일이 그대로 변환
        String id2 = sqlSession.selectOne("com.smhrd.domain.MemberDAO.selectId", id);
        
        if(id2!=null) {
           System.out.println("id중복O");
           check = false;
           sqlSession.commit();
        }else {
           System.out.println("id중복X");
           check = true;
           sqlSession.commit();
        }
      }catch(Exception e) {
         e.printStackTrace();
      }finally{
         sqlSession.close();
      }
      
      return check;
   }
   
   //아이디비밀번호 찾기기능(돈터치!)
   public MemberVO selectNamePw(MemberVO member) {
      System.out.println("dao실행");
      MemberVO showMember = null;
      System.out.print(member.toString());
      try {
         showMember = sqlSession.selectOne("selectNamePw", member);
         if(showMember != null) {
            System.out.println(showMember.toString());
            System.out.println("커밋");
            sqlSession.commit();
         }else{
            System.out.println("showMember실패");
            sqlSession.rollback();
         }
    } catch (Exception e) {
      e.printStackTrace();
   }finally {
      sqlSession.close();
   }
      return showMember;
   }
   
   
}