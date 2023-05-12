package com.human.java.domain;

import lombok.Data;

@Data
public class QnAVO {
	private int question_id;
	private int category_id;
	private String category_name;
	private String userId;
	private String academy;
	private String title;
	private String name;
	private String content;
	private String created_at;
	private String password;
	private int view_cnt;
	private String answer_state;
}
