package com.human.java.domain;

import java.sql.Date;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Data
public class Company_infoVO {
	
		private String userId;
		private String password;
		private String password_confirm;
		private String tel;
		private String company_name;
		private String company_representative;
		private String company_manager;
		//주소
		private String company_postcode;
		private String company_road;
		private String company_jibun;
		private String company_detail;
		private String company_extra;
		
		private String company_site;
		private String company_manager_email;
		private String employee_cnt;
		private Date establishment_date;
		private String insurances;
		private String company_type;
		private String sales;
		
}
