package com.human.java.domain;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
import oracle.sql.DATE;

@Data
public class RecruitVO {

	private int ad_id; // - 
	private String userId; // - 
	//file
	private String company_logo; //1
	private String company_logo_en; //1
	
	private String company_name; //1
	private String job_experience; //1
	private String job_education; //1
	private String job_position; //1
	private String programming_languages; //1
	private String hire_type; //1
	private String job_salary; //1
	private String working_days; //1
	private String working_hours; //1
	private String probation_period; //1
	private String coding_test; //1
	private String job_description; //1
	private String application_deadline; //1
	private String contact_email; //1
	private DATE regdate; //-
	private String ad_title; //1
	private String manager_name; //1
	private int company_id; //-
	
	//address
	private String company_road; //1
	private String company_detail; //1
	private String company_extra; //1

	/*********************************************/
	MultipartFile company_logo_file;	// From 태그에 있는 type="file"인 대상의 name="" 과 동일해야함
	
	public MultipartFile getFile() {
		return company_logo_file;
	}

	public void setFile(MultipartFile company_logo_file) {
		this.company_logo_file = company_logo_file;
		System.out.println("** 파일 첨부 변수 생성 **");
		// 현재 이 시점은 Controller의 파라미터가 생성되는 시점 / 즉, Controller가 실행되기 전
		// 현재 시점에서 파일에 대한 정보를 담을 변수에 값을 채워주는 작업을 코딩
		
		if (!company_logo_file.isEmpty()) {
			// 파일 이름 추출, 사이즈, 확장자 추출 등...
			this.company_logo = company_logo_file.getOriginalFilename();	// 실제 파일명을 fname에 넣어주는 것
			
			// 실제 파일 생성 >> 혹시 사용자가 같은 이름을 가진 파일을 첨부(업로드)한다면 이전 파일에게 덮어짐 > 이전 파일이 훼손
//			File f = new File("C:\\Users\\human\\Desktop\\sts3\\cWebBoard\\src\\main\\webapp\\resources\\upload\\" + b_fname);
			
			// 가짜 이름(파일 이름)을 생성하여 문제를 보완
			// 1. 가짜 이름에 사용할 파일의 확장자 명을 추출
			String fileExtension = company_logo.substring(company_logo.lastIndexOf(".")); // . 이후 것
			
			// 2. 사용자의 파일을 저장할때 이름이 겹치지 않도록 암호화하는 특별한 코드 (암호화)
			// 	형식 : 랜덤 문자열 32자리.확장자명
			this.company_logo_en = UUID.randomUUID().toString().replaceAll("-", "") + fileExtension;
			
			// fname_en : 랜덤 문자열 32자리이므로 중복없이 저장이 가능
			// 랜덤 파일명(b_fname_en)과 실제 파일명(b_fname)은 서로 매칭해야하기때문에 둘다 DB에 저장해야함
//			File f = new File("C:\\Users\\human\\Desktop\\sts3\\cWebBoard\\src\\main\\webapp\\resources\\upload\\" + fname_en);
			File f = new File("C:\\Users\\97yeo\\git\\myFinalProject\\myFinalProject\\src\\main\\webapp\\resources\\company\\" + company_logo_en );
			try {
				// 첨부파일로 받은 데이터를 File 클래스로 만든 데이터에게 반환
				company_logo_file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// 비어있으면(파일이 없으면) 위 과정을 생략
		
	}
	/*********************************************/

}
