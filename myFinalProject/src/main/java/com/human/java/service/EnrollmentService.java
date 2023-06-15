package com.human.java.service;

import java.util.List;

import com.human.java.domain.EnrollmentVO;

public interface EnrollmentService {

	List<EnrollmentVO> getEnrollList(EnrollmentVO vo);

	int insertEnrollment(EnrollmentVO vo);

	// 현재 선생님의 강좌가 존재하는지 확인
	int chkCourse(int teacherId);

}
