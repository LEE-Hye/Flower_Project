package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MapDAO {
   
   SqlSessionFactory sqlSessionFactory=SqlSessionManager.getSqlSession();
   SqlSession sqlSession =sqlSessionFactory.openSession();

   
   public List<MapVO>Allmap(){
      List<MapVO> mapList = null;
      System.out.println("시작");
      try {
         mapList = sqlSession.selectList("com.smhrd.domain.MapDAO.Allmap");
         System.out.println("세션데이터" + mapList);
         if(mapList != null) {
            sqlSession.commit();
         }else {
            sqlSession.rollback();
         }
      } catch (Exception e) {
         e.printStackTrace();
      }finally {
         sqlSession.close();
      }return mapList;

   }
}