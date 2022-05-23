package com.smhrd.domain;

import java.math.BigDecimal;

public class FlowerVO {
	
	private String f_name;
	private BigDecimal f_month;
	private String f_story;
	private String f_img;
	private String f_season;
	private String f_search;
	
	public FlowerVO(String f_name, BigDecimal f_month, String f_story, String f_img, String f_season, String f_search){
		super();
		this.f_name = f_name;
		this.f_month = f_month;
		this.f_story = f_story;
		this.f_img = f_img;
		this.f_season = f_season;
		this.f_search = f_search;
	}

	public String getF_name() {
		return f_name;
	}

	public BigDecimal getF_month() {
		return f_month;
	}

	public String getF_story() {
		return f_story;
	}

	public String getF_img() {
		return f_img;
	}
	
	public String getF_season() {
		return f_season;
	}
	
	public String getF_search() {
		return f_search;
	}
	
}
