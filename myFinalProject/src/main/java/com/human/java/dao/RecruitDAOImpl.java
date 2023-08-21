package com.human.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.domain.RecruitVO;

@Repository("RecruitDAO")
public class RecruitDAOImpl implements RecruitDAO {
	
	//mybatis
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<RecruitVO> getRecruitList(RecruitVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## getRecruitList dao 진입 - RecruitDAOImpl ##");
		return mybatis.selectList("RecruitDAO.getRecruitList");
	}

	@Override
	public RecruitVO getRecruit(RecruitVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## getRecruit dao 진입 - RecruitDAOImpl ##");
		System.out.println("getRecruit vo: "+vo);
		return mybatis.selectOne("RecruitDAO.getRecruit",vo);
	}

	@Override
	public void insertRecruit(RecruitVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## insertRecruit dao 진입 - RecruitDAOImpl ##");
		mybatis.insert("RecruitDAO.insertRecruit",vo);
	}

	@Override
	public RecruitVO getRecruitForUpdating(RecruitVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## getRecruitForUpdating dao 진입 - RecruitDAOImpl ##");
		return mybatis.selectOne("RecruitDAO.getRecruitForUpdating",vo);
	}

	@Override
	public void updateRecruit(RecruitVO vo) {
	    System.out.println("## updateRecruit dao 진입 - RecruitDAOImpl ##");
	    mybatis.update("RecruitDAO.updateRecruit", vo);
	}

	@Override
	public void deleteRecruit(RecruitVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## deleteRecruit 진입 - RecruitDAOImpl ##");
		mybatis.delete("RecruitDAO.deleteRecruit", vo);
	}

	@Override
	public List<RecruitVO> searchCompanyList(RecruitVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## searchCompanyList dao 진입 - RecruitDAOImpl ##");
		return mybatis.selectList("RecruitDAO.searchCompanyList",vo);
	}

	@Override
	public List<RecruitVO> searchEducationList(RecruitVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## searchEducationList dao 진입 - RecruitDAOImpl ##");
		return mybatis.selectList("RecruitDAO.searchEducationList",vo);
	}

	@Override
	public List<RecruitVO> searchPositionList(RecruitVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## searchPositionList dao 진입 - RecruitDAOImpl ##");
		return mybatis.selectList("RecruitDAO.searchPositionList",vo);
	}

	@Override
	public List<RecruitVO> searchHireList(RecruitVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## searchHireList dao 진입 - RecruitDAOImpl ##");
		return mybatis.selectList("RecruitDAO.searchHireList",vo);
	}

	@Override
	public List<RecruitVO> searchCareerList(RecruitVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## searchCareerList dao  진입 - RecruitDAOImpl ##");
		return mybatis.selectList("RecruitDAO.searchCareerList",vo);
	}

	@Override
	public List<RecruitVO> searchExtraAddrList(RecruitVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## search_ExtraAddrList dao 진입 - RecruitDAOImpl ##");
		return mybatis.selectList("RecruitDAO.searchExtraAddrList",vo);
	}

}
