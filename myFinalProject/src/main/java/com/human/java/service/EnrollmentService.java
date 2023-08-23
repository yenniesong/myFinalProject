package com.human.java.service;

import java.util.List;

import com.human.java.domain.EnrollmentVO;

public interface EnrollmentService {

	List<EnrollmentVO> getEnrollList(EnrollmentVO vo);

	void insertEnrollment(EnrollmentVO vo);

	// 신청이 되어있는지 아닌지 확인
//	EnrollmentVO chkCourse(EnrollmentVO vo);

	EnrollmentVO chkCourse(String userId, int course_id);

}
