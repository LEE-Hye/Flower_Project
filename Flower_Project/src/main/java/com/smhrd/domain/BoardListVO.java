package com.smhrd.domain;

public class BoardListVO {
	private int pnum;
	private String mid;
	private String title;
	private String content;
	

	
	public BoardListVO(int pnum, String mid, String title) {
		super();
		this.pnum = pnum;
		this.mid = mid;
		this.title = title;
	}
	
	
	public BoardListVO(int pnum, String mid, String title, String content) {
		super();
		this.pnum = pnum;
		this.mid = mid;
		this.title = title;
		this.content = content;
	}


	public int getPnum() {
		return pnum;
	}


	public void setPnum(int pnum) {
		this.pnum = pnum;
	}


	public String getMid() {
		return mid;
	}


	public void setMid(String mid) {
		this.mid = mid;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	
	
	
	
}