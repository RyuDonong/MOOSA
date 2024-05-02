package com.kh.lodging.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.common.JDBCTemplate;
import com.kh.lodging.model.vo.Lodging;


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

	public ArrayList<Lodging> selectLodgingList(Connection conn,String category) {

		ArrayList<Lodging> list =new ArrayList<>();
		String sql = prop.getProperty("selectLodgingList");
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		try {
			System.out.println(category);
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
								 ,rset.getString("LOD_CATEGORY_NAME"));		
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
	
	
	
}
