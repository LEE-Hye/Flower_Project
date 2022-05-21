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
		List<ReplyVO> replyList = null;
		try {
			replyList = sqlSession.selectList("com.smhrd.domain.ReplyDAO.selectAllReply");
			if(replyList!=null) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return replyList;
	}
	
	//댓글 수정기능
	public int updateReply() {
		int cnt=0;
		try {
			cnt = sqlSession.update("com.smhrd.domain.ReplyDAO.updateReply");
		}  catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
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
	
	
	
	
}