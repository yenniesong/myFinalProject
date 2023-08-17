package com.human.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.CompanyInfoDAO;
import com.human.java.domain.CompanyInfoVO;

@Service("companyInfoService")
public class CompanyInfoServiceImpl implements CompanyInfoService {

	@Autowired
	CompanyInfoDAO companyinfoDAO;
	@Override
	public CompanyInfoVO idcheck_Login(CompanyInfoVO vo) {
		// TODO Auto-generated method stub
		System.out.println("go to Login - in companyInfo Service");
		return companyinfoDAO.idCheck(vo);
	}

	@Override
	public int CompanyInsert(CompanyInfoVO vo) {
		// TODO Auto-generated method stub
		return companyinfoDAO.companyInsert(vo);
	}

	@Override
	public List<CompanyInfoVO> companyList() {
		// TODO Auto-generated method stub
		return companyinfoDAO.companyList();
	}

	@Override
	public CompanyInfoVO companyInfo(String userId) {
		// TODO Auto-generated method stub
		return companyinfoDAO.companyInfo(userId);
	}

}
