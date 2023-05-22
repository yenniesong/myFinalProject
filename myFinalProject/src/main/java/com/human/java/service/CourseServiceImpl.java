package com.human.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.CourseDAO;
import com.human.java.domain.CourseVO;

@Service("CourseService")
public class CourseServiceImpl implements CourseService {

	@Autowired
	private CourseDAO courseDAO;

	@Override
	public List<CourseVO> getCourseList(CourseVO vo) {
		System.out.println("## getCourseList service 진입 ##");
		return courseDAO.getCourseList(vo);
	}

	@Override
	public CourseVO getCourse(CourseVO vo) {
		System.out.println("## getCourse service 진입 ##");
		return courseDAO.getCourse(vo);
	}

	@Override
	public void insertCourse(CourseVO vo) {
		System.out.println("## insertCourse service 진입 ##");
		courseDAO.insertCourse(vo);
	}

	@Override
	public CourseVO goCourseForUpdating(CourseVO vo) {
		System.out.println("## goCourseForUpdating service 진입 ##");
		return courseDAO.goCourseForUpdating(vo);
	}

	@Override
	public void updateCourse(CourseVO vo) {
		System.out.println("## updateCourse service 진입 ##");
		courseDAO.updateCourse(vo);
	}

	@Override
	public void deleteCourse(CourseVO vo) {
		System.out.println("## deleteCourse service 진입 ##");
		courseDAO.deleteCourse(vo);
	}
} 
