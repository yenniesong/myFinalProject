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

	// 선생님 정보 변경
	void updateTeacher(TeacherVO vo);

	// 선생님 삭제
	void deleteTeacher(TeacherVO vo);
}
