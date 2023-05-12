package com.human.java.domain;

import lombok.Data;

@Data
public class TeacherVO {
	private int teacher_id;		
	private String teacher_name;
	private String bootcamp_name;
	private String course_name;
	private String description;
	private String image_url;
}
