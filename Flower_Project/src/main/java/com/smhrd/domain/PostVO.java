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
	
	public PostVO() {
		
	}
	
	
	
	public PostVO(int pnum) {
		super();
		this.pnum = pnum;
	}



	public PostVO(int pnum, String mid, String title) {
		super();
		this.pnum = pnum;
		this.mid = mid;
		this.title = title;
	}
	
	
	public PostVO(int pnum, String mid, String title, String content, String sload) {
		super();
		this.pnum = pnum;
		this.mid = mid;
		this.title = title;
		this.content = content;
		this.sload = sload;
	}


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
	
	
	
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}


	public void setMid(String mid) {
		this.mid = mid;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public void setFid(String fid) {
		this.fid = fid;
	}


	public void setPlike(int plike) {
		this.plike = plike;
	}


	public void setPdate(Timestamp pdate) {
		this.pdate = pdate;
	}


	public void setHit(int hit) {
		this.hit = hit;
	}


	public void setOname(String oname) {
		this.oname = oname;
	}


	public void setSname(String sname) {
		this.sname = sname;
	}


	public void setSload(String sload) {
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

	@Override
	public String toString() {
		return "PostVO [pnum=" + pnum + ", mid=" + mid + ", title=" + title + ", content=" + content + ", fid=" + fid
				+ ", plike=" + plike + ", pdate=" + pdate + ", hit=" + hit + ", oname=" + oname + ", sname=" + sname
				+ ", sload=" + sload + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
