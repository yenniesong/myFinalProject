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

	// file method
	// 파일 저장 처리를 위한 메소드
	// form tag -> type = file의 name과 동일해야 함
	MultipartFile company_logo_file;

	public MultipartFile getCompany_logo_file() {
		return company_logo_file;
	}

	// 현재 시점에서 파일에 대한 정보를 담을 변수에 값을 채워주는 작업
	// 현재 시점 = controller의 파라미터가 생성되는 시점 -> controller 실행 전
	public void setCompany_logo_file(MultipartFile company_logo_file) {
		this.company_logo_file = company_logo_file;
		System.out.println("======파일 첨부 변수 생성======");

		if (!company_logo_file.isEmpty()) {
			// 파일 이름, 사이즈, 확장자 추출 등등
			this.company_logo = company_logo_file.getOriginalFilename();

			// 실제 파일 생성 >> 혹시 사용자가 같은 이름을 가진 파일을 업로드 한다면 이전 파일에게 덮어짐 -> 이전 파일 훼손됨
			// File f = new
			// File("C:\\Users\\human\\Desktop\\sts3\\cWebBoard\\src\\main\\webapp\\resources\\upload\\"+b_fname);

			// 파일 이름을 임의로 생성해 문제 보완
			// 1. 임의로 사용할 파일의 확장자명 추출 -> 사용자가 업로드한 파일의 이름에서 추출
			String fileExtension = company_logo.substring(company_logo.lastIndexOf("."));

			// 2. 사용자의 파일을 저장할 때 이름이 겹치지 않도록 암호화하는 특별한 코드(암호화)
			// 형식: 랜덤문자열 32자리.확장자명
			this.company_logo_en = UUID.randomUUID().toString().replaceAll("-", "");

			// b_fname_en: 랜덤문자열 32자리므로 중복 없이 저장 가능
			// 랜덤문자(b_fname_en)과 실제 파일명(b_fname)을 서로 매칭 해줘야 함 -> 따라서 데이터베이스에 둘 다 저장해야 함
			File f = new File(
					"C:\\Users\\SONG.PS\\git\\myFinalProject\\myFinalProject\\src\\main\\webapp\\resources\\company_logo\\"
							+ company_logo_en + fileExtension);
//			File f = new File(
//					"C:\\Users\\97yeo\\git\\myFinalProject\\myFinalProject\\src\\main\\webapp\\resources\\company_logo\\"
//							+ company_logo_en + fileExtension);
			try {
				// 첨부파일로 받은 데이터를 File클래스로 만든 데이터로 변환
				company_logo_file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		

		// 비어있으면 (파일 x) 위 과정 생략

	}

}
