package com.billy.Service;

import javax.inject.Inject;


import org.springframework.stereotype.Service;

import com.billy.DAO.IF_billyDAO;
import com.billy.VO.BillyGoodsVO;

@Service
public class BillyServiceImpl implements IF_billyService {
	
	@Inject	//나 dao단이 필요해 주입해줘
	private IF_billyDAO billyDao;

	@Override
	public void insertOne(BillyGoodsVO bvo) throws Exception { //빌리등록
		billyDao.insertOne(bvo);		
	}

}
