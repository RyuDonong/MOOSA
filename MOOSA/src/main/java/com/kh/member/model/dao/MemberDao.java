package com.kh.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.common.JDBCTemplate;
import com.kh.common.model.vo.Photo;
import com.kh.member.model.vo.Member;

public class MemberDao {
	private Properties prop = new Properties();

	public MemberDao() {
		String filePath = MemberDao.class.getResource("/resources/sql/member-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	//로그인
	public Member loginMember(Connection conn, String userId, String userPwd) {
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		
		Member m = null;
		
		String sql = prop.getProperty("loginMember");
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				m = new Member(rset.getInt("USER_NO")
							  ,rset.getString("USER_ID")
							  ,rset.getString("USER_PWD")
							  ,rset.getString("USER_NAME")
							  ,rset.getString("PHONE")
							  ,rset.getString("EMAIL")
							  ,rset.getString("ADDRESS")
							  ,rset.getDate("ENROLL_DATE")
							  ,rset.getDate("MODIFY_DATE")
							  ,rset.getString("STATUS")
							  ,rset.getString("GENDER")
							  ,rset.getInt("GRADE_NO")
							  ,rset.getInt("PHOTO_NO"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		
		return m;
	}
	//회원 정보 수정 메소드
	public int updateMember(Connection conn, Member updateM) {
		
		String sql = prop.getProperty("updateMember");
		int result = 0;
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,updateM.getPhone());
			pstmt.setString(2,updateM.getEmail());
			pstmt.setString(3,updateM.getAddress());
			pstmt.setString(4,updateM.getUserId());
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	//프로필 사진 수정 메소드
	public int updateProfile(Connection conn, Member updateM, Photo p) {
		int result = 0;
		String sql = prop.getProperty("updateProfile");
		PreparedStatement pstmt = null;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,p.getOriginName());
			pstmt.setString(2, p.getChangeName());
			pstmt.setString(3, p.getFilePath());
			pstmt.setString(4, updateM.getUserId());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	//세션에 프로필 사진 담기 위한 조회 메소드
	public Photo selectProfile(Connection conn, String userId) {
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectProfile");
		Photo profile=null;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rset=pstmt.executeQuery();
			if(rset.next()) {
				profile = new Photo(rset.getString("THUMBNAIL"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return profile;
	}
	//비밀번호 수정 메소드
	public int updatePwd(Connection conn, String userId, String userPwd, String updatePwd) {
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updatePwd");
		int result = 0;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, updatePwd);
			pstmt.setString(2, userId);
			pstmt.setString(3, userPwd);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	//회원 아이디로 회원 조회하기
	public Member selectMember(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectMember");
		ResultSet rset = null;
		Member updateMember = null;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				updateMember = new Member(rset.getInt("USER_NO")
										  ,rset.getString("USER_ID")
										  ,rset.getString("USER_PWD")
										  ,rset.getString("USER_NAME")
										  ,rset.getString("PHONE")
										  ,rset.getString("EMAIL")
										  ,rset.getString("ADDRESS")
										  ,rset.getDate("ENROLL_DATE")
										  ,rset.getDate("MODIFY_DATE")
										  ,rset.getString("STATUS")
										  ,rset.getString("GENDER")
										  ,rset.getInt("GRADE_NO")
										  ,rset.getInt("PHOTO_NO"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return updateMember;
	}
	//회원 탈퇴 메소드 (status를 N으로 바꾸기)
	public int deleteMember(Connection conn, String userId) {
		int result = 0;
		String sql=prop.getProperty("deleteMember");
		PreparedStatement pstmt = null;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			result= pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}
	

}
