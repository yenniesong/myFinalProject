package com.human.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.domain.TeacherVO;

@Repository("TeacherDAO")
public class TeacherDAOImpl implements TeacherDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<TeacherVO> getTeacherList(TeacherVO vo) {
		System.out.println("## getTeacherList dao 진입 ##");
		return mybatis.selectList("TeacherDAO.getTeacherList");
	}

	@Override
	public TeacherVO getTeacher(TeacherVO vo) {
		System.out.println("## getTeacher dao 진입 ##");
		return mybatis.selectOne("TeacherDAO.getTeacher", vo);
	}

	@Override
	public void insertTeacher(TeacherVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateTeacher(TeacherVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteTeacher(TeacherVO vo) {
		// TODO Auto-generated method stub
		
	}

}
