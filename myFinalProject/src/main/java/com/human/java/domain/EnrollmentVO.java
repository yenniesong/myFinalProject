package com.human.java.domain;

import lombok.Data;

@Data
public class EnrollmentVO {
	
	private int enrollment_id;
	private String userId;
	private String name;
	private String bootcamp_id;
	private String bootcamp_name;
	private int teacher_id;
	private String teacher_name;
	private int course_id;
	private String course_name;
	private String enrollment_date;
}
