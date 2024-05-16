package com.kh.course.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.JDBCTemplate;
import com.kh.course.model.vo.Attachment;
import com.kh.course.model.vo.Course;
import com.kh.course.model.vo.Reply;
import com.kh.tour.model.vo.TourBoard;

public class CourseDao {

	private Properties prop = new Properties();

	public CourseDao() {

		String filePath = CourseDao.class.getResource("/resource/sql/course-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public Course selectCourse(Connection conn, int cno) {
		Course c = null; 
		ResultSet rset = null; 
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectCourse");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				c = new Course(rset.getInt("COURSE_NO")
							  ,rset.getString("COURSE_TITLE")
							  ,rset.getString("COURSE_CONTENT"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return c;
	}

	
}