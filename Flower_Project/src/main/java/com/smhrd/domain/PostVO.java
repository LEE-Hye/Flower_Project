package com.smhrd.domain;

import java.sql.Timestamp;

public class PostVO {
	
	private int pnum;
	private String mid;
	private String title;
	private String content;
	private String fid;
	private int plike;
	private Timestamp pdate;
	private int hit;
	private String oname;
	private String sname;
	private String sload;
	
	
	public PostVO(String mid, String title, String content, String fid, int plike, int hit, String oname, String sname,
			String sload) {
		super();
		this.mid = mid;
		this.title = title;
		this.content = content;
		this.fid = fid;
		this.plike = plike;
		this.hit = hit;
		this.oname = oname;
		this.sname = sname;
		this.sload = sload;
	}
	
	
	public int getPnum() {
		return pnum;
	}
	public String getMid() {
		return mid;
	}
	public String getTitle() {
		return title;
	}
	public String getContent() {
		return content;
	}
	public String getFid() {
		return fid;
	}
	public int getPlike() {
		return plike;
	}
	public Timestamp getPdate() {
		return pdate;
	}
	public int getHit() {
		return hit;
	}
	public String getOname() {
		return oname;
	}
	public String getSname() {
		return sname;
	}
	public String getSload() {
		return sload;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
