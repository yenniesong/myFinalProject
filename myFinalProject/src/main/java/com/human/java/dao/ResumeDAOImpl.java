package com.human.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.domain.PagingVO;
import com.human.java.domain.ResumeVO;

@Repository("ResumeDAO")
public class ResumeDAOImpl implements ResumeDAO {
	
	//mybatis
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<ResumeVO> getResumeList(PagingVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## getResumeList - DAOImpl ##");
		return mybatis.selectList("ResumeDAO.getResumeList",vo);
	}
	
	@Override
	public PagingVO getResumeListCount(String userId) {
		// TODO Auto-generated method stub
		System.out.println("## getResumeListCount - DAOImpl ##");
		return mybatis.selectOne("ResumeDAO.getResumeListCount", userId);
	}

	@Override
	public ResumeVO getResume(ResumeVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## getResume - DAOImpl ##");
		System.out.println("getResume vo: "+vo);
		return mybatis.selectOne("ResumeDAO.getResume",vo);
	}
	
	@Override
	public void insertResume(ResumeVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## insertResum - DAOImpl ##");
		mybatis.insert("ResumeDAO.insertResume",vo);
		
	}

	@Override
	public ResumeVO getResumeForUpdating(ResumeVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## getResumeForUpdating - DAOImpl ##");
		return mybatis.selectOne("ResumeDAO.getResumeForUpdating",vo);
	}

	@Override
	public void updateResume(ResumeVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## updateResume - DAOImpl ##");
		mybatis.update("ResumeDAO.updateResume", vo);
		
	}

	@Override
	public void deleteResume(ResumeVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## deleteResume - DAOImpl ##");
		mybatis.delete("ResumeDAO.deleteResume", vo);
		
	}


}
