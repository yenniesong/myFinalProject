package com.human.java.domain;

import lombok.Data;

@Data
public class ReviewVO {

	private int review_id;
	private String userId;
	private int teacher_id;
	private int course_id;
	private String name;
	private String content;
	private String created_at;
	private int star_point;
	
}
