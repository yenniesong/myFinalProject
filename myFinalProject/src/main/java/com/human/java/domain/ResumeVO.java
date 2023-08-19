package com.human.java.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class ResumeVO {
	
	private int resume_id;
	private String userId;
	private String user_name;
	private String user_email;
	private String user_phone_number;
	private String user_address;

	//file
	private String user_photo;
	private String user_photo_en;
	
	private String user_education;
	private String user_skills;
	private String user_portfolio_link;
	
	//file
	private String user_portfolio_file;
	
	private String user_experience;
	private String self_introduce;
	private Date regdate;
	private String resume_title;
	
	//file 처리 메소드 필요

}
