package com.human.java.dao;

import java.util.List;

import com.human.java.domain.CourseVO;

public interface CourseDAO {

	List<CourseVO> getCourseList(CourseVO vo);

	CourseVO getCourse(CourseVO vo);

	void insertCourse(CourseVO vo);

	CourseVO goCourseForUpdating(CourseVO vo);

	void updateCourse(CourseVO vo);

	void deleteCourse(CourseVO vo);

	List<CourseVO> searchRegionList(CourseVO vo);

	List<CourseVO> searchPositionList(CourseVO vo);


}
