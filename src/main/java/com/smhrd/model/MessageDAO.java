package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MessageDAO {
	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public int message(MessageDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("message",dto);
		session.close();
		
		return row;
		
	}
	
	public ArrayList<MessageDTO> showMessage(String email){
		SqlSession session =sqlSessionFactory.openSession(true);
		ArrayList<MessageDTO> mes_list = (ArrayList)session.selectList("showMessage", email);
		session.close();
		
		return mes_list;
		
	}
	
	//나에게 온 메시지 전체 삭제
	public int deleteMessage(String email) {
		SqlSession session =sqlSessionFactory.openSession(true);
		int row =session.delete("deleteMessage",email);
		session.close();
		
		return row;
	}
	
	public int OnedeleteMessage(int num) {
		SqlSession session =sqlSessionFactory.openSession(true);
		int row =session.delete("OnedeleteMessage",num);
		session.close();
		
		return row;
	}
	
}
