package com.smhrd.domain;

public class BoardListVO {
	private String b_num;
	private String b_name;
	private String b_title;
	private String b_content;
	
	public BoardListVO(String b_num, String b_name, String b_title) {
		super();
		this.b_num = b_num;
		this.b_name = b_name;
		this.b_title = b_title;
	}


	public BoardListVO(String b_num, String b_name, String b_title, String b_content) {
		super();
		this.b_num = b_num;
		this.b_name = b_name;
		this.b_title = b_title;
		this.b_content = b_content;
	}


	public String getB_content() {
		return b_content;
	}


	public void setB_content(String b_content) {
		this.b_content = b_content;
	}


	public String getB_num() {
		return b_num;
	}


	public void setB_num(String b_num) {
		this.b_num = b_num;
	}


	public String getB_name() {
		return b_name;
	}


	public void setB_name(String b_name) {
		this.b_name = b_name;
	}


	public String getB_title() {
		return b_title;
	}


	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	
	
	
}