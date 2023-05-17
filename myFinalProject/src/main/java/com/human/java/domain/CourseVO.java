package com.human.java.domain;

import lombok.Data;

@Data
public class CourseVO {
	
	private int course_id;
	private int bootcamp_id;
	private String bootcamp_name;
	private String course_name;
	private String description;
	private int price;
	private String image_url;
	private String course_start_date;
	private String course_end_date;
	
}
