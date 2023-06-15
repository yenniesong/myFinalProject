package com.human.java.service;

import java.util.List;

import com.human.java.domain.EnrollmentVO;

public interface EnrollmentService {

	List<EnrollmentVO> getEnrollList(EnrollmentVO vo);

	int insertEnrollment(EnrollmentVO vo);

}
