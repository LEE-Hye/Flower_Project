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
         
      }return mapList;

   }
   
   //월별 값가져오기
   public List<MapVO>Carnivalmap(){
      List<MapVO> carnivalList = null;
      System.out.println("시작");
      try {
         carnivalList = sqlSession.selectList("com.smhrd.domain.MapDAO.Carnivalmap");
         System.out.println("세션데이터" + carnivalList);
         if(carnivalList != null) {
            sqlSession.commit();
         }else {
            sqlSession.rollback();
         }
      } catch (Exception e) {
         e.printStackTrace();
      }finally {
         
      }return carnivalList;
   }
   
   //월별 값가져오기
   public List<MapVO>Carnivalmap5(){
      List<MapVO> carnivalList5 = null;
      System.out.println("시작");
      try {
         carnivalList5 = sqlSession.selectList("com.smhrd.domain.MapDAO.Carnivalmap5");
         System.out.println("세션데이터" + carnivalList5);
         if(carnivalList5 != null) {
            sqlSession.commit();
         }else {
            sqlSession.rollback();
         }
      } catch (Exception e) {
         e.printStackTrace();
      }finally {
         
      }return carnivalList5;
   }
   
   //월별 값가져오기
   public List<MapVO>month1(){
      List<MapVO> month1 = null;
      System.out.println("시작");
      try {
         month1 = sqlSession.selectList("com.smhrd.domain.MapDAO.month1");
         System.out.println("세션데이터" + month1);
         if(month1 != null) {
            sqlSession.commit();
         }else {
            sqlSession.rollback();
         }
      } catch (Exception e) {
         e.printStackTrace();
      }finally {
         //sqlSession.close();
      }return month1;
   }
   public List<MapVO>month2(){
      List<MapVO> month2 = null;
      System.out.println("시작");
      try {
         month2 = sqlSession.selectList("com.smhrd.domain.MapDAO.month2");
         System.out.println("세션데이터" + month2);
         if(month2 != null) {
            sqlSession.commit();
         }else {
            sqlSession.rollback();
         }
      } catch (Exception e) {
         e.printStackTrace();
      }finally {
         //sqlSession.close();
      }return month2;
   }
   public List<MapVO>month3(){
      List<MapVO> month3 = null;
      System.out.println("시작");
      try {
         month3 = sqlSession.selectList("com.smhrd.domain.MapDAO.month3");
         System.out.println("세션데이터" + month3);
         if(month3 != null) {
            sqlSession.commit();
         }else {
            sqlSession.rollback();
         }
      } catch (Exception e) {
         e.printStackTrace();
      }finally {
         //sqlSession.close();
      }return month3;
   }
   public List<MapVO>month4(){
      List<MapVO> month4 = null;
      System.out.println("시작");
      try {
         month4 = sqlSession.selectList("com.smhrd.domain.MapDAO.month4");
         System.out.println("세션데이터" + month4);
         if(month4 != null) {
            sqlSession.commit();
         }else {
            sqlSession.rollback();
         }
      } catch (Exception e) {
         e.printStackTrace();
      }finally {
         //sqlSession.close();
      }return month4;
   }
   public List<MapVO>month5(){
      List<MapVO> month5 = null;
      System.out.println("시작");
      try {
         month5 = sqlSession.selectList("com.smhrd.domain.MapDAO.month5");
         System.out.println("세션데이터" + month5);
         if(month5 != null) {
            sqlSession.commit();
         }else {
            sqlSession.rollback();
         }
      } catch (Exception e) {
         e.printStackTrace();
      }finally {
         //sqlSession.close();
      }return month5;
   }
   public List<MapVO>month6(){
      List<MapVO> month6 = null;
      System.out.println("시작");
      try {
         month6 = sqlSession.selectList("com.smhrd.domain.MapDAO.month6");
         System.out.println("세션데이터" + month6);
         if(month6 != null) {
            sqlSession.commit();
         }else {
            sqlSession.rollback();
         }
      } catch (Exception e) {
         e.printStackTrace();
      }finally {
         //sqlSession.close();
      }return month6;
   }
   public List<MapVO>month7(){
      List<MapVO> month7 = null;
      System.out.println("시작");
      try {
         month7 = sqlSession.selectList("com.smhrd.domain.MapDAO.month7");
         System.out.println("세션데이터" + month7);
         if(month7 != null) {
            sqlSession.commit();
         }else {
            sqlSession.rollback();
         }
      } catch (Exception e) {
         e.printStackTrace();
      }finally {
         //sqlSession.close();
      }return month7;
   }
   public List<MapVO>month8(){
      List<MapVO> month8 = null;
      System.out.println("시작");
      try {
         month8 = sqlSession.selectList("com.smhrd.domain.MapDAO.month8");
         System.out.println("세션데이터" + month8);
         if(month8 != null) {
            sqlSession.commit();
         }else {
            sqlSession.rollback();
         }
      } catch (Exception e) {
         e.printStackTrace();
      }finally {
         //sqlSession.close();
      }return month8;
   }
   public List<MapVO>month9(){
      List<MapVO> month9 = null;
      System.out.println("시작");
      try {
         month9 = sqlSession.selectList("com.smhrd.domain.MapDAO.month9");
         System.out.println("세션데이터" + month9);
         if(month9 != null) {
            sqlSession.commit();
         }else {
            sqlSession.rollback();
         }
      } catch (Exception e) {
         e.printStackTrace();
      }finally {
         //sqlSession.close();
      }return month9;
   }
   public List<MapVO>month10(){
      List<MapVO> month10 = null;
      System.out.println("시작");
      try {
         month10 = sqlSession.selectList("com.smhrd.domain.MapDAO.month10");
         System.out.println("세션데이터" + month10);
         if(month10 != null) {
            sqlSession.commit();
         }else {
            sqlSession.rollback();
         }
      } catch (Exception e) {
         e.printStackTrace();
      }finally {
         //sqlSession.close();
      }return month10;
   }
   public List<MapVO>month11(){
      List<MapVO> month11 = null;
      System.out.println("시작");
      try {
         month11 = sqlSession.selectList("com.smhrd.domain.MapDAO.month11");
         System.out.println("세션데이터" + month11);
         if(month11 != null) {
            sqlSession.commit();
         }else {
            sqlSession.rollback();
         }
      } catch (Exception e) {
         e.printStackTrace();
      }finally {
         //sqlSession.close();
      }return month11;
   }
   public List<MapVO>month12(){
      List<MapVO> month12 = null;
      System.out.println("시작");
      try {
         month12 = sqlSession.selectList("com.smhrd.domain.MapDAO.month12");
         System.out.println("세션데이터" + month12);
         if(month12 != null) {
            sqlSession.commit();
         }else {
            sqlSession.rollback();
         }
      } catch (Exception e) {
         e.printStackTrace();
      }finally {
         sqlSession.close();
      }return month12;
   }   
   
   
   
   
   
}