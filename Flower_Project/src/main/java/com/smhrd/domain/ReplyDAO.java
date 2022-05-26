package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class ReplyDAO {
	
	SqlSessionFactory sqlSessionFactory=SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	   
	//댓글 입력기능
	public int insertReply(ReplyVO r_vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = 0;
		
		try {
			cnt = sqlSession.insert("com.smhrd.domain.ReplyDAO.insertReply", r_vo);
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
	
	
	//댓글 화면에 리스트로 띄우는 기능
	public List<ReplyVO> selectAllReply(){
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<ReplyVO> replyList = null;
		try {
			replyList = sqlSession.selectList("com.smhrd.domain.ReplyDAO.selectAllReply");
			if(replyList!=null) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
			
			for(ReplyVO vo: replyList) {
				System.out.println("toString"+vo.toString());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		
		return replyList;
	}
	
	//댓글 수정기능
	   public int updateReply(ReplyVO r_vo) {
	      SqlSession sqlSession = sqlSessionFactory.openSession();
	      int cnt=0;
	      
	      try {
	         cnt = sqlSession.update("com.smhrd.domain.ReplyDAO.updateReply",r_vo);
	         if(cnt>0) {
	               sqlSession.commit();
	            }else {
	               sqlSession.rollback();
	            }
	      }  catch (Exception e) {
	         e.printStackTrace();
	      }finally {
	         sqlSession.close();
	      }
	      
	      System.out.println("쿼리실행결과:"+cnt);
	      return cnt;
	   }
	
	//댓글 삭제기능
	public int deleteReply(int reply_num) {
		int cnt =0;
		try {
			cnt = sqlSession.delete("com.smhrd.domain.ReplyDAO.deleteReply", reply_num);
			if(cnt>0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return cnt;
	}
	
	//게시글 번호에 따른 댓글 불러오기
	public List<ReplyVO> selectReply(int pnum){
		List<ReplyVO> replySelectList = null;
		try {
			replySelectList= sqlSession.selectList("com.smhrd.domain.ReplyDAO.selectReply", pnum);
			if(replySelectList!=null) {
			sqlSession.commit();
			System.out.println("커밋");
			}else {
				sqlSession.rollback();
				System.out.println("롤백");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return replySelectList;
	}
	
	
	
	
	
	
	
	
	
	
	
}