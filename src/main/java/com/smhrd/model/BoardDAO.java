package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class BoardDAO {
   private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
   
   public List<BoardDTO> selectAllBoard() {
        //세션생성
         SqlSession session = sqlSessionFactory.openSession(true);
         
         //selectOne -> select 기능 실행 (한 행만)
         List<BoardDTO> list = session.selectList("com.smhrd.db.BoardMapper.selectAllBoard");
         session.close();
         
         return list;
      }
   
   //게시물 삽입메서드
   public int insertBoard(BoardDTO bvo) {
        //세션생성
         SqlSession session = sqlSessionFactory.openSession(true);
         
         int cnt = session.insert("com.smhrd.db.BoardMapper.insertBoard",bvo);
         
         session.close();
         return cnt;
   }
   public BoardDTO selectOneBoard(int num) {
       //세션생성
        SqlSession session = sqlSessionFactory.openSession(true);
        
        //selectOne -> select 기능 실행 (한 행만)
        BoardDTO board = session.selectOne("com.smhrd.db.BoardMapper.selectOneBoard",num);
        session.close();
        
        return board;
     }
}