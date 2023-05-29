package com.human.java.dao;

import java.util.List;

import com.human.java.domain.EnrollmentVO;

public interface EnrollmentDAO {

	List<EnrollmentVO> getEnrollList(EnrollmentVO vo);

	void insertEnrollment(EnrollmentVO vo);

}
