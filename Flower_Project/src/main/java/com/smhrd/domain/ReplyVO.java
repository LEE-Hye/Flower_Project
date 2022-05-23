package com.smhrd.domain;

public class ReplyVO {
	private int reply_num;
	private int pnum;
	private String replyid;
	private String replycontent;
	
	
	
	public ReplyVO() {
		super();
	}



	public ReplyVO(int reply_num, int pnum, String replyid, String replycontent) {
		super();
		this.reply_num = reply_num;
		this.pnum = pnum;
		this.replyid = replyid;
		this.replycontent = replycontent;
	}
	
	

	public ReplyVO(int pnum, String replyid, String replycontent) {
		super();
		this.pnum = pnum;
		this.replyid = replyid;
		this.replycontent = replycontent;
	}


	public int getReply_num() {
		return reply_num;
	}

	public void setReply_num(int reply_num) {
		this.reply_num = reply_num;
	}

	public int getpnum() {
		return pnum;
	}

	public void setpnum(int pnum) {
		this.pnum = pnum;
	}

	public String getReplyid() {
		return replyid;
	}

	public void setReplyid(String replyid) {
		this.replyid = replyid;
	}

	public String getReplycontent() {
		return replycontent;
	}

	public void setReplycontent(String replycontent) {
		this.replycontent = replycontent;
	}
	
	
	
}