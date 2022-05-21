package com.smhrd.domain;

public class ReplyVO {
	private int reply_num;
	private int b_num;
	private String replyid;
	private String replycontent;
	
	public ReplyVO(int reply_num, int b_num, String replyid, String replycontent) {
		super();
		this.reply_num = reply_num;
		this.b_num = b_num;
		this.replyid = replyid;
		this.replycontent = replycontent;
	}
	
	

	public ReplyVO(int b_num, String replyid, String replycontent) {
		super();
		this.b_num = b_num;
		this.replyid = replyid;
		this.replycontent = replycontent;
	}


	public int getReply_num() {
		return reply_num;
	}

	public void setReply_num(int reply_num) {
		this.reply_num = reply_num;
	}

	public int getB_num() {
		return b_num;
	}

	public void setB_num(int b_num) {
		this.b_num = b_num;
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