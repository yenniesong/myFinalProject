package com.human.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.EnrollmentDAO;
import com.human.java.domain.EnrollmentVO;

@Service("EnrollmentService")
public class EnrollmentServiceImpl implements EnrollmentService {

	@Autowired
	private EnrollmentDAO enrollmentDAO;
	
	@Override
	public List<EnrollmentVO> getEnrollList(EnrollmentVO vo) {
		System.out.println("## getEnrollList service 진입 ##");
		return enrollmentDAO.getEnrollList(vo);
	}

	@Override
	public void insertEnrollment(EnrollmentVO vo) {
		System.out.println("## insertEnrollment service 진입 ##");
		enrollmentDAO.insertEnrollment(vo);
	}

}
