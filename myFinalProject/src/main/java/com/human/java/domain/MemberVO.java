package com.human.java.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberVO {

	private String userid;
	private String name;
	private String nickname;
	private String email;
	private String password;
	private String password_confirm;
	private String tel;
	private Date birth;
	private String interests;
	private String gender;
	private String location;
	private String position;
	private String academy;
	private String employed;
	private String loginFG;
	
	
	public boolean isEmpty() {
		// TODO Auto-generated method stub
		return false;
	}
	
	


	
	
}
