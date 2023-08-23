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

		vo.setUserId(vo.getUserId());
		vo.setCourse_id(vo.getCourse_id());
		
		EnrollmentVO chkResult = enrollmentDAO.chkCourse(vo);
		System.out.println("====> chkResult : " + chkResult);
		
		int result = 0;
		if (chkResult == null) {
			enrollmentDAO.insertEnrollment(vo);
			result = 1;
		} else {
			System.out.println("===> chkResult.getCourse_id() 값 : " + chkResult.getCourse_id());
			result = 0;
		}
		return result;
	}

	@Override
	public EnrollmentVO chkCourse(String userId, int course_id) {
		System.out.println("## insertEnrollment service 진입 ##");
		System.out.println("userId : " + userId);
		System.out.println("course_id : " + course_id);
		
		EnrollmentVO vo = new EnrollmentVO();
		vo.setUserId(userId);
		vo.setCourse_id(course_id);
		
		return enrollmentDAO.chkCourse(vo);
	}

}
