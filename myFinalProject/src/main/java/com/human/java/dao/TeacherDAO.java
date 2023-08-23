package com.human.java.dao;

import java.util.List;

import com.human.java.domain.TeacherVO;

public interface TeacherDAO {
	// 선생님 리스트 조회
	List<TeacherVO> getTeacherList(TeacherVO vo);

	// 선생님 상세 페이지
	TeacherVO getTeacher(TeacherVO vo);

	// 선생님 추가
	void insertTeacher(TeacherVO vo);

	// 선생님 정보 변경을 위한 정보 조회
	TeacherVO getTeacherForUpdating(TeacherVO vo);

	// 선생님 정보 변경
	void updateTeacher(TeacherVO vo);

	// 선생님 삭제
	void deleteTeacher(TeacherVO vo);

	// 학원리스트 조회
	List<TeacherVO> searchBootcampList(TeacherVO vo);

	// 포지션 조회
	List<TeacherVO> searchPositionList(TeacherVO vo);

	// 선생님이 현재 수업을 하고 있는지 조회
//	int chkCourse(int teacher_id);


}
