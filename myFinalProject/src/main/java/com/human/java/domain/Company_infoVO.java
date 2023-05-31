package com.human.java.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class Company_infoVO {
	
		private String userid;
		private String name;
		private String nickname;
		private String email;
		private String password;
		private String password_confirm;
		private String tel;
		private String company_name;
		private String company_representative;
		private String company_manager;
		private String company_add;
		private String company_site;
		private String company_manager_email;
		private String employee_cnt;
		private Date establishment_date;
		private String insurances;
		private String company_type;
		private String sales;
		private String major_business;
		
}
