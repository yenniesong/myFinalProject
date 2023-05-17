package com.human.java.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("CourseDAO")
public class CourseDAOImpl implements CourseDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
}
