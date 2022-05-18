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
   
   
   
   
   
   
   
}