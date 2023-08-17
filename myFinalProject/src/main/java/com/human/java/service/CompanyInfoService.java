package com.human.java.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.human.java.domain.CompanyInfoVO;

public interface CompanyInfoService {
	
	public CompanyInfoVO idcheck_Login(CompanyInfoVO vo);
	public int CompanyInsert(CompanyInfoVO vo);
	public List<CompanyInfoVO> companyList();
	public CompanyInfoVO companyInfo(String userId);

}
