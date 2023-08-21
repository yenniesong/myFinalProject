package com.human.java.domain;

import java.sql.Date;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Data
public class CompanyInfoVO {
	
		private int company_id;
		private String userId;
		private String password;
		private String tel;
		private String company_name;
		private String company_representative;
		private String company_manager;
		private String company_site;
		private String company_manager_email;
		private String employee_cnt;
		private Date establishment_date;
		private String insurances;
		private String company_type;
		private String sales;
		
}
