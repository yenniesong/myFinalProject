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
		
		System.out.println("getTeacher vo : " + vo);
		
		return mybatis.selectOne("TeacherDAO.getTeacher", vo);
	}

	@Override
	public void insertTeacher(TeacherVO vo) {
		System.out.println("## insertTeacher dao 진입 ##");
		mybatis.insert("TeacherDAO.insertTeacher", vo);
	}

	@Override
	public TeacherVO getTeacherForUpdating(TeacherVO vo) {
		System.out.println("## getTeacherForUpdating dao 진입 ##");
		return mybatis.selectOne("TeacherDAO.getTeacherForUpdating", vo);
	}

	@Override
	public void updateTeacher(TeacherVO vo) {
		System.out.println("## updateTeacher dao 진입 ##");
		mybatis.update("TeacherDAO.updateTeacher", vo);
	}

	@Override
	public void deleteTeacher(TeacherVO vo) {
		System.out.println("## deleteTeacher dao 진입 ##");
		mybatis.delete("TeacherDAO.deleteTeacher", vo);
	}

	@Override
	public List<TeacherVO> searchBootcampList(TeacherVO vo) {
		System.out.println("## searchBootcampList dao 진입 ##");
		return mybatis.selectList("TeacherDAO.searchBootcampList", vo);
	}


}
