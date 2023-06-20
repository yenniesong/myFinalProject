package com.human.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.domain.CourseVO;

@Repository("CourseDAO")
public class CourseDAOImpl implements CourseDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<CourseVO> getCourseList(CourseVO vo) {
		System.out.println("## getCourseList dao 진입 ##");
		return mybatis.selectList("CourseDAO.getCourseList");
	}

	@Override
	public CourseVO getCourse(CourseVO vo) {
		System.out.println("## getCourse dao 진입 ##");
		System.out.println("getCourse vo : " + vo);
		return mybatis.selectOne("CourseDAO.getCourse", vo);
	}

	@Override
	public void insertCourse(CourseVO vo) {
		System.out.println("## insertCourse dao 진입 ##");
		mybatis.insert("CourseDAO.insertCourse", vo);
	}

	@Override
	public CourseVO goCourseForUpdating(CourseVO vo) {
		System.out.println("## goCourseForUpdating dao 진입 ##");
		return mybatis.selectOne("CourseDAO.goCourseForUpdating", vo);
	}

	@Override
	public void updateCourse(CourseVO vo) {
		System.out.println("## updateCourse dao 진입 ##");
		System.out.println("getCourse vo : " + vo);
		mybatis.update("CourseDAO.updateCourse", vo);
	}

	@Override
	public void deleteCourse(CourseVO vo) {
		System.out.println("## deleteCourse dao 진입 ##");
		mybatis.delete("CourseDAO.deleteCourse", vo);
	}

	@Override
	public List<CourseVO> searchRegionList(CourseVO vo) {
		System.out.println("## searchRegionList dao 진입 ##");
		return mybatis.selectList("CourseDAO.searchRegionList", vo);
	}

	@Override
	public List<CourseVO> searchPositionList(CourseVO vo) {
		System.out.println("## searchPositionList dao 진입 ##");
		return mybatis.selectList("CourseDAO.searchPositionList", vo);
	}
}
