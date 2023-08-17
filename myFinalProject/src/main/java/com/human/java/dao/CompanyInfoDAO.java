package com.human.java.dao;

import java.util.List;

import com.human.java.domain.CompanyInfoVO;

public interface CompanyInfoDAO {
	
	/**
	 * id 중복체트 기능 구현
	 */	
	CompanyInfoVO idCheck(CompanyInfoVO vo); 
	
	/**
	 * 회원가입기능 구현
	 */
	int companyInsert(CompanyInfoVO vo);
	
	/**
	 * 로그인 확인 기능 구현
	 */
	CompanyInfoVO companyLogin(CompanyInfoVO vo);
	
	public List<CompanyInfoVO> companyList();

	CompanyInfoVO companyInfo(String userId);

}
