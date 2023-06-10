package com.human.java.domain;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Data
public class AnswerVO {
	private int answer_id;
	private int question_id;
	private int bootcamp_id;
	private String content;
	private String bootcamp_name;
	private String created_at;
}
