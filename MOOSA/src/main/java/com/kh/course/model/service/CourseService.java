package com.kh.course.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.JDBCTemplate;
import com.kh.course.model.dao.CourseDao;
import com.kh.course.model.vo.Reply;

public class CourseService {

	public int insertReply(Reply r) {
		Connection conn = JDBCTemplate.getConnection();
		
		int result = new CourseDao().insertReply(conn,r);
		
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		
		JDBCTemplate.close(conn);
		
		return result;
	}

	public ArrayList<Reply> replyList(int refBno) {
		Connection conn = JDBCTemplate.getConnection();
		
		ArrayList<Reply> list = new CourseDao().replyList(conn,refBno);
		
		JDBCTemplate.close(conn);
		return list;
	}
	
}
