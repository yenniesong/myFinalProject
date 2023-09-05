package com.human.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.human.java.domain.ApplicantVO;
import com.human.java.domain.PagingVO;

@Repository("ApplicantDAO")
public class ApplicantDAOImpl implements ApplicantDAO {
	
	//mybatis
	private SqlSessionTemplate mybatis;

	@Override
	public List<ApplicantVO> getApplicantList(PagingVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## getApplicantList - DAOImpl ##");
		return mybatis.selectList("ApplicantDAO.getApplicantList",vo);
	}

	@Override
	public PagingVO getApplicantListCount(String userId) {
		// TODO Auto-generated method stub
		System.out.println("## getApplicantListCount - DAOImpl ##");
		System.out.println("## getApplicantListCount - DAOImpl userId ======> ## " + userId);
		return mybatis.selectOne("ApplicantDAO.getApplicantListCount", userId);
	}

	@Override
	public void applyFor(ApplicantVO vo) {
		System.out.println("## applyFor - DAOImpl ##");		
		System.out.println("applicant vo ==> " + vo);
		mybatis.insert("ApplicantDAO.applyFor", vo);
	}

}
