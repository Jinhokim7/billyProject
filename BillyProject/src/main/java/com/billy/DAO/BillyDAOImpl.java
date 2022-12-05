package com.billy.DAO;

import javax.inject.Inject;


import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.billy.VO.BillyGoodsVO;

@Repository
public class BillyDAOImpl implements IF_billyDAO{

	private static String mapperQuery = "com.billy.DAO.IF_billyDAO";
	
	@Inject	
	private SqlSession sqlSession;
	
	@Override
	public void insertOne(BillyGoodsVO bvo) throws Exception {
		sqlSession.insert(mapperQuery + ".insertOne",bvo); //쿼리 매핑 및 실행
	}

}
