package com.human.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.TeacherDAO;
import com.human.java.domain.EnrollmentVO;
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
		System.out.println("getTeacher vo : " + vo);
		
		if (vo.getCourse_id() == 0 || vo.getCourse_name() == null) {
			vo.setCourse_name("-");
		}
		
		return teacherDAO.getTeacher(vo);
	}

	@Override
	public void insertTeacher(TeacherVO vo) {
		System.out.println("## insertTeacher service 진입 ##");
		teacherDAO.insertTeacher(vo);		
	}

	@Override
	public TeacherVO getTeacherForUpdating(TeacherVO vo) {
		System.out.println("## getTeacherForUpdating service 진입 ##");	
		return teacherDAO.getTeacherForUpdating(vo);
	}

	@Override
	public void updateTeacher(TeacherVO vo) {
		System.out.println("## updateTeacher service 진입 ##");	
		teacherDAO.updateTeacher(vo);
	}

	@Override
	public void deleteTeacher(TeacherVO vo) {
		System.out.println("## deleteTeacher service 진입 ##");	
		teacherDAO.deleteTeacher(vo);
	}

	@Override
	public List<TeacherVO> searchBootcampList(TeacherVO vo) {
		System.out.println("## searchBootcampList service 진입 ##");	
		return teacherDAO.searchBootcampList(vo);
	}

	@Override
	public List<TeacherVO> searchPositionList(TeacherVO vo) {
		System.out.println("## searchPositionList service 진입 ##");	
		return teacherDAO.searchPositionList(vo);
	}

//	@Override
//	public int chkCourse(int teacher_id) {
//		System.out.println("## chkCourse service 진입 ##");	
//		System.out.println("teacher_id : " + teacher_id);
//		return teacherDAO.chkCourse(teacher_id);
//	}

	@Override
	public void selectBootcamp_id(String userId) {
		// TODO Auto-generated method stub
		
	}


}
 