package com.smhrd.domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class PostDAO {
	
	SqlSessionFactory sqlSessionFactory=SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	public int insertPost(PostVO p_vo) {
		SqlSession sqlSession =sqlSessionFactory.openSession();
		int cnt =0;
		
		try {
			cnt = sqlSession.insert("com.smhrd.domain.PostDAO.insertPost", p_vo);
			
			if(cnt>0) {
				sqlSession.commit();
				System.out.println("커밋");
			}else {
				sqlSession.rollback();
				System.out.println("롤백");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		
		
		return cnt;
	}
	
	
	
	
	
	
	
	
}
