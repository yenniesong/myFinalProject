package com.human.java.domain;

import lombok.Data;
import oracle.sql.DATE;

@Data
public class ApplicantVO {
	
	private int applicant_id;
	private int userId; // 여기서의 userId는 회사의 userId
	private int ad_id;
	private String ad_title;
	private int resume_id;
	private String resume_title;
	private String applicant_name;
	private String regdate;
}
