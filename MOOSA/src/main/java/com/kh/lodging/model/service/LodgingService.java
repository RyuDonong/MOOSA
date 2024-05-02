package com.kh.lodging.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.JDBCTemplate;
import com.kh.lodging.model.dao.LodgingDao;
import com.kh.lodging.model.vo.Lodging;

public class LodgingService {

	public ArrayList<Lodging> selectLodgingList(String category) {
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Lodging> list = new LodgingDao().selectLodgingList(conn,category);
		JDBCTemplate.close(conn);
		
		return list;
	}

	
	
}
