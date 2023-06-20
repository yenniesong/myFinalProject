package com.human.java.service;

import java.util.List;

import com.human.java.domain.CourseVO;

public interface CourseService {

	// 강좌 리스트 불러오기
	List<CourseVO> getCourseList(CourseVO vo);

	// 강좌 상세페이지
	CourseVO getCourse(CourseVO vo);

	void insertCourse(CourseVO vo);

	CourseVO goCourseForUpdating(CourseVO vo);

	void updateCourse(CourseVO vo);

	void deleteCourse(CourseVO vo);

	List<CourseVO> searchRegionList(CourseVO vo);

	List<CourseVO> searchPositionList(CourseVO vo);

}
