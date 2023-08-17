package com.human.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.java.domain.CompanyInfoVO;

@Repository("companyInfoDAO")
public class CompanyInfoDAOImpl implements CompanyInfoDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public CompanyInfoVO idCheck(CompanyInfoVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## idCheck DAO");
		return mybatis.selectOne("CompanyInfoDAO.idCheck",vo);
	}

	@Override
	public int companyInsert(CompanyInfoVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## COMPANY INSERT DAO");
		return mybatis.insert("CompanyInfoDAO.companyInsert",vo);
	}

	@Override
	public CompanyInfoVO companyLogin(CompanyInfoVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## COMPANY LOGIN DAO");
		return mybatis.selectOne("CompanyInfoDAO.idCheck", vo);
	}

	@Override
	public List<CompanyInfoVO> companyList() {
		// TODO Auto-generated method stub
		System.out.println("## COMPANY LIST DAO");
		return mybatis.selectList("CompanyInfoDAO.companyList");
	}

	@Override
	public CompanyInfoVO companyInfo(String userId) {
		// TODO Auto-generated method stub
		System.out.println("## COMPANYINFO DAO");
		return mybatis.selectOne("CompanyInfoDAO.ComapanyInfo",userId);
	}

}
