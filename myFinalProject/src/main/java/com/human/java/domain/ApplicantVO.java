package com.human.java.domain;

import lombok.Data;

@Data
public class ApplicantVO {
	
	private int applicant_id;
	private String userId;
	private int ad_id;
	private String ad_title;
	private int resume_id;
	private String resume_title;
	private String applicant_name;
}
