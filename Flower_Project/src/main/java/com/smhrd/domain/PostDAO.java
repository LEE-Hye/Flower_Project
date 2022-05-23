package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


public class PostDAO {
	
	SqlSessionFactory sqlSessionFactory=SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	//게시판 글쓰기 기능
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
	
	//리스트 구현기능
		public List<PostVO> selectAllBoard(){
			SqlSession sqlSession =sqlSessionFactory.openSession();
			List<PostVO> postList = null;
			
			try {
				postList = sqlSession.selectList("com.smhrd.domain.PostDAO.selectAllBoard");
				
				if(postList != null) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}return postList;
		}
	
	
	//하나의 게시 글을 보는 메소드
		public PostVO selectPost(int pnum) {
			SqlSession sqlSession =sqlSessionFactory.openSession();
			PostVO p_vo = null;
			
			try {
				p_vo = sqlSession.selectOne("com.smhrd.domain.PostDAO.selectPost", pnum);
				
				if(p_vo != null) {
					sqlSession.commit();
					System.out.println("커밋 ");
				}else {
					sqlSession.rollback();
					System.out.println("롤백 ");
				}
				
			}catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			return p_vo;
			
		}
	
		
		// 변경할 파일O 수정 메서드
	      public int updateFilePost(PostVO p_vo) {
	         SqlSession sqlSession = sqlSessionFactory.openSession();
	         int cnt = 0;

	         try {
	            cnt = sqlSession.update("com.smhrd.domain.PostDAO.updateFilePost", p_vo);

	            if (cnt > 0) {
	               sqlSession.commit();
	            } else {
	               sqlSession.rollback();
	            }
	         } catch (Exception e) {
	            e.printStackTrace();
	         } finally {
	            sqlSession.close();
	         }
	         return cnt;
	      }

		
	      // 변경할 파일X 수정 메서드
	      public int updatePost(PostVO p_vo) {
	         SqlSession sqlSession =sqlSessionFactory.openSession();
	         int cnt=0;
	         
	         try {
	            cnt = sqlSession.update("com.smhrd.domain.PostDAO.updatePost", p_vo);
	            
	            if(cnt>0) {
	               sqlSession.commit();
	            }else {
	               sqlSession.rollback();
	            }
	         }catch (Exception e) {
	            e.printStackTrace();
	         }finally {
	            sqlSession.close();
	         }
	         return cnt;
	      }

		
		
	      //게시글 삭제 메서드
	      public int deletePost(int pnum) {
	         SqlSession sqlSession =sqlSessionFactory.openSession();
	         int cnt = 0;
	         
	         try {
	            cnt = sqlSession.delete("com.smhrd.domain.PostDAO.deletePost", pnum);   
	            if(cnt>0) {
	               sqlSession.commit();
	            } else {
	               sqlSession.rollback();
	            }
	         } catch (Exception e) {
	            e.printStackTrace();
	         }finally {
	            sqlSession.close();
	         }
	          return cnt;
	         
	      }

	//좋아요 메서드
		
		
}
