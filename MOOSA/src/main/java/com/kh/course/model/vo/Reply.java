package com.kh.course.model.vo;

import java.sql.Date;

public class Reply {
	private Date createDate;				//	CREATE_DATE	DATE
	private int likes;				//	LIKES	NUMBER
	private int refBno;				//	REF_BNO	NUMBER
	private String replyWriter;				//	REPLY_WRITER	NUMBER
	private int replyNO;				//	REPLY_NO	NUMBER
	private String status;				//	STATUS	VARCHAR2(1 BYTE)
	private String replyContent;				//	REPLY_CONTENT	VARCHAR2(2000 BYTE)
	
	
	public Reply() {
		super();
	}


	public Reply(Date createDate, int likes, int refBno, String replyWriter, int replyNO, String status,
			String replyContent) {
		super();
		this.createDate = createDate;
		this.likes = likes;
		this.refBno = refBno;
		this.replyWriter = replyWriter;
		this.replyNO = replyNO;
		this.status = status;
		this.replyContent = replyContent;
	}
	
	

	


	public Reply(Date createDate, String replyWriter, int replyNO, String replyContent) {
		super();
		this.createDate = createDate;
		this.replyWriter = replyWriter;
		this.replyNO = replyNO;
		this.replyContent = replyContent;
	}


	public Date getCreateDate() {
		return createDate;
	}


	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}


	public int getLikes() {
		return likes;
	}


	public void setLikes(int likes) {
		this.likes = likes;
	}


	public int getRefBno() {
		return refBno;
	}


	public void setRefBno(int refBno) {
		this.refBno = refBno;
	}


	public String getReplyWriter() {
		return replyWriter;
	}


	public void setReplyWriter(String replyWriter) {
		this.replyWriter = replyWriter;
	}


	public int getReplyNO() {
		return replyNO;
	}


	public void setReplyNO(int replyNO) {
		this.replyNO = replyNO;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getReplyContent() {
		return replyContent;
	}


	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}


	@Override
	public String toString() {
		return "Reply [createDate=" + createDate + ", likes=" + likes + ", refBno=" + refBno + ", replyWriter="
				+ replyWriter + ", replyNO=" + replyNO + ", status=" + status + ", replyContent=" + replyContent + "]";
	}
	
	
}
