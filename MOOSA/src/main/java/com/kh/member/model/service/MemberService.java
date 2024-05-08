package com.kh.member.model.service;

import java.sql.Connection;

import com.kh.common.JDBCTemplate;
import com.kh.common.model.vo.Photo;
import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Member;


public class MemberService {
//로그인
	public Member loginMember(String userId, String userPwd) {
		Connection conn = JDBCTemplate.getConnection();
		
		Member m = new MemberDao().loginMember(conn,userId,userPwd);
		
		JDBCTemplate.close(conn);
		
		return m;
	}

	//회원 정보 수정 메소드
	public int updateMember(Member updateM,Photo p) {
		int result2=1;
		//첨부파일 없을 경우 대비
		
		Connection conn = JDBCTemplate.getConnection();
		int result = new MemberDao().updateMember(conn,updateM);
		if(result>0 && p!=null) {
			
			result2 = new MemberDao().updateProfile(conn,updateM,p);
		}
		
		if(result*result2>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result*result2;
	}
	//프로필 사진 세션에 담기 위해 조회해오기
	public Photo selectProfile(String userId) {
		Connection conn = JDBCTemplate.getConnection();
		Photo profile = new MemberDao().selectProfile(conn,userId);
		JDBCTemplate.close(conn);
		return profile;
	}
	//모달 창으로 비밀번호 변경 메소드
	public int updatePwd(String userId, String userPwd, String updatePwd) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new MemberDao().updatePwd(conn,userId,userPwd,updatePwd);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}
	//정보 수정후 정보 갱신을 위한 회원 정보 조회 메소드
	public Member selectMember(String userId) {
		Connection conn = JDBCTemplate.getConnection();
		Member updateMember = new MemberDao().selectMember(conn,userId);
		JDBCTemplate.close(conn);
		return updateMember;
	}

	public int deleteMember(String userId) {
		Connection conn = JDBCTemplate.getConnection();
		int result = new MemberDao().deleteMember(conn,userId);
		if(result>0) {
			JDBCTemplate.commit(conn);
		}else {
			JDBCTemplate.rollback(conn);
		}
		JDBCTemplate.close(conn);
		return result;
	}
	
}
