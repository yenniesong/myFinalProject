package com.human.java.domain;

import lombok.Data;

@Data
public class ScrapVO {
	
	private int scrap_id;
	private int ad_id;
	private String userId;
	private String ad_title;
	private String company_name;
	private String scrap_date;

}
