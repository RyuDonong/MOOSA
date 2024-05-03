package com.kh.lodging.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.JDBCTemplate;
import com.kh.lodging.model.dao.LodgingDao;
import com.kh.lodging.model.vo.Lodging;
import com.kh.lodging.model.vo.Review;

public class LodgingService {

	//비동기통신 숙소 리스트 조회
	public ArrayList<Lodging> selectLodgingList(String category) {
		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Lodging> list = new LodgingDao().selectLodgingList(conn,category);
		JDBCTemplate.close(conn);
		
		return list;
	}
	//숙소 상세페이지 조회
	public Lodging selectDetailLodging(int lno) {
		Connection conn = JDBCTemplate.getConnection();
		Lodging lod = new LodgingDao().selectDetailLodging(conn,lno);
		JDBCTemplate.close(conn);
		return lod;
	}
	//비동기통신 리뷰 조회 메소드
	public ArrayList<Review> selectReview(int lno) {

		Connection conn = JDBCTemplate.getConnection();
		ArrayList<Review> list = new LodgingDao().selectReview(conn,lno);
		JDBCTemplate.close(conn);
		return list;
	}

	
	
}
