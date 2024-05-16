package com.kh.board.model.vo;

import java.sql.Date;

public class Board {
	private int boardNo; 
	private String boardTitle;
	private String boardContent;
	private int count;
	private int likes;
	private Date createDate;
	private String status;
	private String boardWriter;
	private int categotyNo;
	
	//파일경로와 서버에 업로드된 파일명을 합쳐서 담아올 변수
	private String thumbnailImg;
	
	
	public Board() {
		super();
	}
	
	
	
	
	
	
	public Board(int boardNo, String boardTitle, String boardContent,String boardWriter, Date createDate) {
		super();
		this.boardNo = boardNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardWriter = boardWriter;
		this.createDate = createDate;
	}










	public Board(int boardNo, String boardTitle, int count,String boardContent,String thumbnailImg) {
		super();
		this.boardNo = boardNo;
		this.boardTitle = boardTitle;
		this.count = count;
		this.boardContent = boardContent;
		this.thumbnailImg = thumbnailImg;
		
	}






	public String getThumbnailImg() {
		return thumbnailImg;
	}




	public void setThumbnailImg(String thumbnailImg) {
		this.thumbnailImg = thumbnailImg;
	}




	public Board(int boardNo, String boardTitle, String boardContent, int count, int likes, Date createDate,
			String status, String boardWriter, int categotyNo) {
		super();
		this.boardNo = boardNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.count = count;
		this.likes = likes;
		this.createDate = createDate;
		this.status = status;
		this.boardWriter = boardWriter;
		this.categotyNo = categotyNo;
	}
	
	





	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getLikes() {
		return likes;
	}
	public void setLikes(int likes) {
		this.likes = likes;
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
	public String getBoardWriter() {
		return boardWriter;
	}
	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}
	public int getCategotyNo() {
		return categotyNo;
	}
	public void setCategotyNo(int categotyNo) {
		this.categotyNo = categotyNo;
	}
	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", count=" + count + ", likes=" + likes + ", createDate=" + createDate + ", status=" + status
				+ ", boardWriter=" + boardWriter + ", categotyNo=" + categotyNo + "]";
	}
	

	
}