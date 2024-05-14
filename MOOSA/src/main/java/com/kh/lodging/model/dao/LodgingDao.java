package com.kh.lodging.model.dao;

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
import com.kh.common.model.vo.BoardPagingBar;
import com.kh.common.model.vo.Photo;
import com.kh.lodging.model.vo.Lodging;
import com.kh.lodging.model.vo.Review;
import com.kh.lodging.model.vo.Room;


public class LodgingDao {

	private Properties prop = new Properties();

	public LodgingDao() {
		String filePath = LodgingDao.class.getResource("/resources/sql/lodging-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	//숙소 카테고리별 조회 
	public ArrayList<Lodging> selectLodgingList(Connection conn,String category) {

		ArrayList<Lodging> list =new ArrayList<>();
		String sql = prop.getProperty("selectLodgingList");
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,category);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Lodging(rset.getInt("LOD_NO")
									,rset.getString("LOD_NAME")
									,rset.getString("LOD_ADDRESS")
									,rset.getString("THUMBNAIL")));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return list;
	}

	//숙소 상세 정보 
	public Lodging selectDetailLodging(Connection conn, int lno) {
		Lodging lod = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectDetailLodging");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, lno);
			rset=pstmt.executeQuery();
			if(rset.next()) {
				lod = new Lodging(rset.getInt("LOD_NO")
								 ,rset.getString("LOD_NAME")
								 ,rset.getString("LOD_ADDRESS")
								 ,rset.getString("LOD_INFO")
								 ,rset.getString("LOD_CATEGORY_NAME")
								 ,rset.getString("THUMBNAIL"));
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return lod;
	}
	//숙소 방 정보 조회
	public ArrayList<Room> selectRoom(Connection conn, int lno) {
		ArrayList<Room> rList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectRoom");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, lno);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				Room r = new Room(rset.getInt("ROOM_NO")
								 ,rset.getString("ROOM_NAME")
								 ,rset.getString("ROOM_INFO")
								 ,rset.getInt("PHOTO_NO"));
				rList.add(r);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return rList;
	}
	//숙소 리뷰 조회
	public ArrayList<Review> selectReview(Connection conn, int lno) {
		ArrayList<Review> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset =null;
		String sql = prop.getProperty("selectReview");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, lno);
			rset=pstmt.executeQuery();
			while(rset.next()) {
				list.add(new Review(rset.getInt("REVIEW_NO")
								   ,rset.getString("REVIEW_CONTENT")
								   ,rset.getString("USER_NAME")
								   ,rset.getDate("CREATE_DATE")
								   ,rset.getString("ROOM_NAME")
								   ,rset.getInt("COUNT")));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	//리뷰 번호 추출 메소드
	public int selectReviewNo(Connection conn) {
		int reviewNo = 0;
		ResultSet rset = null;
		Statement stmt = null;
		String sql = prop.getProperty("selectReviewNo");
		try {
			stmt=conn.createStatement();
			rset = stmt.executeQuery(sql);
			if(rset.next()) {
				reviewNo=rset.getInt("RVN");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(stmt);
		}
		return reviewNo;
	}

	//리뷰 글 작성메소드
	public int insertReview(Connection conn, Review r) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertReview");
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, r.getReviewNo());
			pstmt.setString(2, r.getReviewContent());
			pstmt.setInt(3, Integer.parseInt(r.getUserNo()));
			pstmt.setInt(4, Integer.parseInt(r.getRoomNo()));
			pstmt.setInt(5, r.getCount());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(pstmt);
		}
		return result;
	}

	public int insertReviewPhoto(Connection conn, ArrayList<Photo> pList, int reviewNo) {
		PreparedStatement pstmt = null;
		int result = 1; //사진이 여러개 왔을때 하나라도 0이라면 0이 되게 처리
		String sql = prop.getProperty("insertReviewPhoto");
			try {
				for(Photo p : pList) {
					pstmt=conn.prepareStatement(sql);
					pstmt.setString(1, p.getOriginName());
					pstmt.setString(2, p.getChangeName());
					pstmt.setString(3, p.getFilePath());
					pstmt.setInt(4, p.getFileLevel());
					pstmt.setInt(5, reviewNo);
					result *= pstmt.executeUpdate();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				JDBCTemplate.close(pstmt);
			}
		return result;
	}
	//숙소 개수 조회해오기 // 숙소 개수 조회 맵퍼 작성하고 selectList컨트롤러 마저 작성하기
	public int listCount(Connection conn,String category) {
		ResultSet rset = null;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("listCount");
		int listCount = 0;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, category);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				listCount=rset.getInt("COUNT");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return listCount;
	}
	
	
}
