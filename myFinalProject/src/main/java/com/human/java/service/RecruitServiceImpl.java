package com.human.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.RecruitDAO;
import com.human.java.domain.RecruitVO;

@Service("RecruitService")
public class RecruitServiceImpl implements RecruitService{

	//DAO
	@Autowired
	private RecruitDAO recruitDAO;
	
	@Override
	public List<RecruitVO> getRecruitList(RecruitVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## getRecruitList service 진입 ##");
		return recruitDAO.getRecruitList(vo);
	}

	@Override
	public RecruitVO getRecruit(RecruitVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## getRecruit service 진입 ##");
		System.out.println("getRecruit vo: "+vo);
		
		return recruitDAO.getRecruit(vo);
	}

	@Override
	public void insertRecruit(RecruitVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## insertRecruit service 진입 ##");
		recruitDAO.insertRecruit(vo);
		
	}

	@Override
	public RecruitVO getRecruitForUpdating(RecruitVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## getRecruitForUpdating service 진입 ##");
		return recruitDAO.getRecruitForUpdating(vo);
	}

	@Override
	public void updateRecruit(RecruitVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## updateRecruit service 진입 ##");
		recruitDAO.updateRecruit(vo);
		
	}

	@Override
	public void deleteRecruit(RecruitVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## deleteRecruit service 진입 ##");
		recruitDAO.deleteRecruit(vo);
		
	}

	@Override
	public List<RecruitVO> searchCompanyList(RecruitVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## searchCompanyList service 진입 ##");
		return recruitDAO.searchCompanyList(vo);
	}

	@Override
	public List<RecruitVO> searchEducationList(RecruitVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## searchEducationList service 진입 ##");
		return recruitDAO.searchEducationList(vo);
	}

	@Override
	public List<RecruitVO> searchPositionList(RecruitVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## searchPositionList service 진입 ##");
		return recruitDAO.searchPositionList(vo);
	}

	@Override
	public List<RecruitVO> searchHireList(RecruitVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## searchHireList service 진입 ##");
		return recruitDAO.searchHireList(vo);
	}

	@Override
	public List<RecruitVO> searchCareerList(RecruitVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## searchCareerList service 진입 ##");
		return recruitDAO.searchCareerList(vo);
	}

	@Override
	public List<RecruitVO> searchExtraAddrList(RecruitVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## searchExtraAddrList service 진입 ##");
		return recruitDAO.searchExtraAddrList(vo);
	}

}
