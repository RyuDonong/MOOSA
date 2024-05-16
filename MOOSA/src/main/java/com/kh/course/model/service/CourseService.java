package com.kh.course.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.JDBCTemplate;
import com.kh.course.model.dao.BoardDao;
import com.kh.course.model.dao.CourseDao;
import com.kh.course.model.vo.Attachment;
import com.kh.course.model.vo.Board;
import com.kh.course.model.vo.Course;
import com.kh.course.model.vo.Reply;
import com.kh.tour.model.dao.TourDao;
import com.kh.tour.model.vo.TourBoard;

public class CourseService {
	public Course selectCourse(int cno) {
		Connection conn = JDBCTemplate.getConnection();
		
		Course c = new CourseDao().selectCourse(conn,cno);
		
		JDBCTemplate.close(conn);
		
		return c;
	}
	
}
