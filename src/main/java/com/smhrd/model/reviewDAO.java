package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class reviewDAO {
	   private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	   
	   public int insertReview(reviewDTO dto) {
	        //세션생성
	         SqlSession session = sqlSessionFactory.openSession(true);
	         
	         System.out.println(dto);
	         int cnt = session.insert("insertReview",dto);
	         
	         session.close();
	         return cnt;
	   }
	   
	   public List<reviewDTO> showReview(String res_name){
	         SqlSession session = sqlSessionFactory.openSession(true);
	         
	         List<reviewDTO> reviewList = session.selectList("showReview", res_name);
	         
	         return reviewList;
	   }

}
