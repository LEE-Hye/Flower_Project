package com.smhrd.domain;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.smhrd.database.SqlSessionManager;

public class FlowerDAO {

	// SqlSessionFactory 생성 (연결해야하는 DB 설정 정보 가지고 있음)
	// -> Session 생성 (DB연결, 작업수행, 종료 관리)
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	
		public List<FlowerVO> selectAll() {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			List<FlowerVO> flowerList = null;
			
			try {
				flowerList = sqlSession.selectList("com.smhrd.domain.FlowerDAO.selectAll");
		
				if(flowerList!=null) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}return flowerList;
		
		}
		
		
		
		public List<FlowerVO> selectSpring() {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			List<FlowerVO> flowerList_Spring = null;
			
			try {
				flowerList_Spring = sqlSession.selectList("com.smhrd.domain.FlowerDAO.selectSpring");
		
				if(flowerList_Spring!=null) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}return flowerList_Spring;
		
		}
		
		
		
		public List<FlowerVO> selectSummer() {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			List<FlowerVO> flowerList_Summer = null;
			
			try {
				flowerList_Summer = sqlSession.selectList("com.smhrd.domain.FlowerDAO.selectSummer");
		
				if(flowerList_Summer!=null) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}return flowerList_Summer;
		
		}
		
		
		
		
		public List<FlowerVO> selectfall() {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			List<FlowerVO> flowerList_fall = null;
			
			try {
				flowerList_fall = sqlSession.selectList("com.smhrd.domain.FlowerDAO.selectfall");
		
				if(flowerList_fall!=null) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}return flowerList_fall;
		
		}
		
		
		
		public List<FlowerVO> selectWinter() {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			List<FlowerVO> flowerList_winter = null;
			
			try {
				flowerList_winter = sqlSession.selectList("com.smhrd.domain.FlowerDAO.selectWinter");
		
				if(flowerList_winter!=null) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}return flowerList_winter;
		
		}
		
		
		
		
}
