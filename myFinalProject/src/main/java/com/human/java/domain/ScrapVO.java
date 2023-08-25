package com.human.java.domain;

import lombok.Data;
import oracle.sql.DATE;

@Data
public class ScrapVO {
	
	private int scrap_id;
	private String userId;
	private String name;
	private int company_id;
	private String company_name;
	private int ad_id;
	private String ad_title;
	private String scrap_date;

}
