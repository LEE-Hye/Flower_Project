package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class BoardListDAO {
	SqlSessionFactory sqlSessionFactory=SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	//리스트 구현기능
	public List<BoardListVO> selecAlltBoard(){
		List<BoardListVO> BoardList = null;
		
		try {
			BoardList = sqlSession.selectList("com.smhrd.domain.BoardListDAO.selecAlltBoard");
			
			if(BoardList != null) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}return BoardList;
	}
	
	// 리스트 검색기능
	public List<BoardListVO> searchBoard(BoardListVO board) {
		List<BoardListVO> search = null;
		try {
			search = sqlSession.selectList("com.smhrd.domain.BoardListDAO.searchBoard");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
		 sqlSession.close();
		}
		return search;
		
	}
	
}