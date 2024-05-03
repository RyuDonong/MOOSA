package com.kh.lodging.model.vo;

import java.sql.Date;

public class Review {

	private int reviewNo;
	private String reviewContent;
	private int userNo;
	private Date createDate;
	private String status;
	private int Room_no;
	private int count;
	private int photoNo;
	public Review() {
		super();
	}
	public Review(int reviewNo, String reviewContent, int userNo, Date createDate, String status, int room_no,
			int count, int photoNo) {
		super();
		this.reviewNo = reviewNo;
		this.reviewContent = reviewContent;
		this.userNo = userNo;
		this.createDate = createDate;
		this.status = status;
		Room_no = room_no;
		this.count = count;
		this.photoNo = photoNo;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getRoom_no() {
		return Room_no;
	}
	public void setRoom_no(int room_no) {
		Room_no = room_no;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPhotoNo() {
		return photoNo;
	}
	public void setPhotoNo(int photoNo) {
		this.photoNo = photoNo;
	}
	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", reviewContent=" + reviewContent + ", userNo=" + userNo
				+ ", createDate=" + createDate + ", status=" + status + ", Room_no=" + Room_no + ", count=" + count
				+ ", photoNo=" + photoNo + "]";
	}
	
	
}
