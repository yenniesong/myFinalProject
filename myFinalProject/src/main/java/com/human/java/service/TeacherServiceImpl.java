package com.human.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.TeacherDAO;
import com.human.java.domain.TeacherVO;

@Service("TeacherService")
public class TeacherServiceImpl implements TeacherService {

	@Autowired
	private TeacherDAO teacherDAO;
	
	@Override
	public List<TeacherVO> getTeacherList(TeacherVO vo) {
		System.out.println("## getTeacherList service 진입 ##");
		return teacherDAO.getTeacherList(vo);
	}

	@Override
	public TeacherVO getTeacher(TeacherVO vo) {
		System.out.println("## getTeacher service 진입 ##");
		return teacherDAO.getTeacher(vo);
	}

	@Override
	public void insertTeacher(TeacherVO vo) {
		System.out.println("## insertTeacher service 진입 ##");
		
		teacherDAO.insertTeacher(vo);		
	}

	@Override
	public void updateTeacher(TeacherVO vo) {
		System.out.println("## updateTeacher service 진입 ##");		
	}

	@Override
	public void deleteTeacher(TeacherVO vo) {
		System.out.println("## deleteTeacher service 진입 ##");	
		
	}

}
