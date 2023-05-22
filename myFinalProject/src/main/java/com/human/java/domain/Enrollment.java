package com.human.java.domain;

import lombok.Data;

@Data
public class Enrollment {
	
	private int enrollment_id;
	private String userId;
	private int teacher_id;
	private String teacher_name;
	private int course_id;
	private String course_name;
	private String enrollment_date;
}
