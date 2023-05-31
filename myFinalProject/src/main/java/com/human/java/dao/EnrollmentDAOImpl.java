package com.human.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.domain.EnrollmentVO;

@Repository("EnrollmentDAO")
public class EnrollmentDAOImpl implements EnrollmentDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<EnrollmentVO> getEnrollList(EnrollmentVO vo) {
		System.out.println("## getEnrollList dao 진입 ##");
		return mybatis.selectList("EnrollmentDAO.getEnrollList", vo);
	}

	@Override
	public void insertEnrollment(EnrollmentVO vo) {
		System.out.println("## insertEnrollment dao 진입 ##");
		mybatis.insert("EnrollmentDAO.insertEnrollment", vo);
	}

}