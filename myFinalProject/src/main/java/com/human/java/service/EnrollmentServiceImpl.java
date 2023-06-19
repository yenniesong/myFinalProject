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
	public int insertEnrollment(EnrollmentVO vo) {
		System.out.println("## insertEnrollment service 진입 ##");
		System.out.println("vo : " + vo);

		int result = 0;
		
		if (vo.getTeacher_id() > 0) {	// 선생님이 프로필에서 강좌를 하면 (더 줄일 수 있으면 줄이기)
			result = enrollmentDAO.cntTEnroll(vo);
			
			if (result > 0) {
				return result;
			} else {
				enrollmentDAO.insertEnrollment(vo);
				result = 0;
			}
			
		} else if (vo.getCourse_id() > 0){
			result = enrollmentDAO.cntCEnroll(vo);
			
			if (result > 0) {
				return result;
			} else {
				enrollmentDAO.insertEnrollment(vo);
				result = 0;
			}
		}
		return result;
	}

}
