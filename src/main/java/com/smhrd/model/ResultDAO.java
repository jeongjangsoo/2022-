package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class ResultDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	
	public List<ResultSetDTO> resultInfo(String loc, String like) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ResultSetDTO dto = new ResultSetDTO();
		dto.setRes_addr(loc);
		dto.setRes_categoy(like);
	
		
		List<ResultSetDTO> resInfo = session.selectList("restultInfo", dto);
		
		session.close();
		
		return resInfo;
	}
	
	
	
	
	
	
}
