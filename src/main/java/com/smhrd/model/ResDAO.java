package com.smhrd.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;

import com.smhrd.db.SqlSessionManager;

public class ResDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// 맛집 정보페이지에서 식당리스트
	// sql:select * from tbl_restaurant where res_name =#{rname} and
	// res_categoy=#{rctg}
	public List<ResDTO> listRes(String raddr) {
		List<ResDTO> list = new ArrayList<ResDTO>();
		SqlSession session = sqlSessionFactory.openSession(true);
		list = session.selectList("listRes", raddr);
		session.close();

		return list;
	}

	public List<ResDTO> listLoc(String raddr) {
		List<ResDTO> list = new ArrayList<ResDTO>();
		System.out.println("TEst2" + sqlSessionFactory);
		SqlSession session = sqlSessionFactory.openSession(true);
		list = session.selectList("listLoc", raddr);
		System.out.println(list.size());
		session.close();

		return list;
	}

	public ResDTO listRinfo(String rName) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ResDTO info = session.selectOne("ResInfo", rName);
		session.close();
		return info;
	}

	public ResDTO BukGu(ResDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ResDTO bInfo = session.selectOne("BukGU", dto);
		session.close();

		return bInfo;
	}

	public List<ResDTO> ResInfo() {

		List<ResDTO> rlist = new ArrayList<ResDTO>();
		SqlSession session = sqlSessionFactory.openSession(true);
		rlist = session.selectList("ResInfo");

		session.close();

		return rlist;
	}

	public List<ResDTO> resultInfo() {

		List<ResDTO> rlist = new ArrayList<ResDTO>();
		SqlSession session = sqlSessionFactory.openSession(true);
		rlist = session.selectList("ResInfo");

		session.close();

		return rlist;
	}
	
	
}
