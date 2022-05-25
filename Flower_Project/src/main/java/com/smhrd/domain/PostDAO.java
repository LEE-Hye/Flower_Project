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
	
	
	// 조회수 하나 추가하면서 + 하나의 게시 글을 보는 메소드 
		public PostVO selectPost(int pnum) {
			SqlSession sqlSession =sqlSessionFactory.openSession();
			PostVO p_vo = null;
			
			try {
				sqlSession.update("com.smhrd.domain.PostDAO.addCount", pnum);
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

	      
	   // 좋아요 누를경우 추가하는 메소드
	  	public int updateLike(int pnum, String status) {
	  		SqlSession sqlSession = sqlSessionFactory.openSession();
	  		int cnt = 0;
	  		
	  		try {
	  			//좋아요일경우
	  			if(status.equals("like")) {
	  				cnt = sqlSession.update("com.smhrd.domain.PostDAO.like", pnum);				
	  			}else { //싫어요일 경우
	  				cnt = sqlSession.update("com.smhrd.domain.PostDAO.dislike", pnum);				
	  			}
	  			
	  			if(cnt!=0) {
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
	  	
	  	
	  	
	 // 좋아요 갯수 가져오기
		public int getLike(int pnum) {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			int like = -1;
			
			try {
				like = (int)sqlSession.selectOne("com.smhrd.domain.PostDAO.getLike", pnum);
				if(like!=-1) {
					sqlSession.commit();
				}else {
					sqlSession.rollback();
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}
			
			return like;
		}
	    
	    
	    //해쉬태그 클릭시 나오는 관련게시물 
		public List<PostVO> hashBoard(String fid){
			SqlSession sqlSession =sqlSessionFactory.openSession();
			List<PostVO> hashList = null;
			
			try {
				hashList = sqlSession.selectList("com.smhrd.domain.PostDAO.hashBoard", fid);
				
				if(hashList != null) {
					sqlSession.commit();
					System.out.println("커밋확인");
				}else {
					sqlSession.rollback();
					System.out.println("롤백확인");
				}
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				sqlSession.close();
			}return hashList;
		}
	   
	    
		// 호감도 순으로 사진 가져오기
		public List<PostVO> selectLikeAllBoard() {
			SqlSession sqlSession = sqlSessionFactory.openSession();
			List<PostVO> postList = null;

			try {
				postList = sqlSession.selectList("com.smhrd.domain.PostDAO.selectLikeAllBoard");

				if (postList != null) {
					sqlSession.commit();
				} else {
					sqlSession.rollback();
				}

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}
			
			return postList;
		}

	    
		
}
