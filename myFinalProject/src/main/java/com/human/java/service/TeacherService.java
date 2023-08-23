package com.human.java.service;

import java.util.List;

import com.human.java.domain.EnrollmentVO;
import com.human.java.domain.TeacherVO;

public interface TeacherService {

	// 선생님 리스트 조회
	List<TeacherVO> getTeacherList(TeacherVO vo);

	// 선생님 상세 페이지
	TeacherVO getTeacher(TeacherVO vo);

	// 선생님 추가
	void insertTeacher(TeacherVO vo);

	// 선생님 정보 변경
	void updateTeacher(TeacherVO vo);	

	// 선생님 삭제
	void deleteTeacher(TeacherVO vo);

	// 
	TeacherVO getTeacherForUpdating(TeacherVO vo);

	// 학원 별 선생님 리스트 조회
	List<TeacherVO> searchBootcampList(TeacherVO vo);

	// 포지션 별 선생님 리스트 조회
	List<TeacherVO> searchPositionList(TeacherVO vo);

	// 선생님에게 강좌가 있는지 없는지 확인
//	int chkCourse(int teacher_id);

	void selectBootcamp_id(String userId);

}
