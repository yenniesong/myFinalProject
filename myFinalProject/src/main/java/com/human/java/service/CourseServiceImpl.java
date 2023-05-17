package com.human.java.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.CourseDAO;

@Service("CourseService")
public class CourseServiceImpl implements CourseService {

	@Autowired
	private CourseDAO courseDAO;
}
