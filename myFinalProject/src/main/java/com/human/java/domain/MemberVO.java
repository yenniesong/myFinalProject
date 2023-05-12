package com.human.java.domain;

import lombok.Data;

@Data
public class MemberVO {
	private String userId;
	private String name;
	private String nickName;
	private String email;
	private String password;
	private String tel;
	private String birth;
	private String interests;
	private String gender;
	private String location;
	private String position;
	private String academy;
	private String employed;
}
