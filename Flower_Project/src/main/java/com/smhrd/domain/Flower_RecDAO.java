package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class Flower_RecDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	
	public List<Flower_Rec> selectAll_Rec() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Flower_Rec> flower_Rec = null;
		
		try {
			flower_Rec = sqlSession.selectList("com.smhrd.domain.Flower_RecDAO.selectAll_Rec");
	
			if(flower_Rec!=null) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}return flower_Rec;
	
	}
}
