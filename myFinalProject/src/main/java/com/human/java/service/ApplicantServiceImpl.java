package com.human.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.ApplicantDAO;
import com.human.java.domain.ApplicantVO;
import com.human.java.domain.PagingVO;
import com.human.java.domain.ScrapVO;

@Service("ApplicantService")
public class ApplicantServiceImpl implements ApplicantService {
	
	//dao
	@Autowired
	private ApplicantDAO applicantDAO;

	@Override
	public List<ApplicantVO> getApplicantList(PagingVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## getApplicantList serviceImpl ##");
		int startPage = (vo.getPageNum() - 1 ) * vo.getCountPerPage() + 1;
		int endPage = vo.getPageNum() * vo.getCountPerPage();
		
		vo.setStartPage(startPage);
		vo.setEndPage(endPage);
		return applicantDAO.getApplicantList(vo);
	}

	@Override
	public PagingVO getApplicantListCount(int groupNum, String userId) {
		// TODO Auto-generated method stub
		System.out.println("## getApplicantListCount service 진입 ##");
		System.out.println("## userId ==> ## " + userId);
		
		PagingVO vo = applicantDAO.getApplicantListCount(userId);
		System.out.println("vo : " + vo);
		vo.setGroupNum(groupNum);
		
		System.out.println("vo.getTotalCount : " + vo.getTotalCount());
		
		System.out.println("vo : " + vo);
		
		int totalPageCount = vo.getTotalCount() / vo.getCountPerPage();
		if ( vo.getTotalCount() % vo.getCountPerPage() != 0 ) totalPageCount++;
		
		vo.setTotalPageCount(totalPageCount);
		System.out.println("totalPageCount : " + vo);
		
		int totalGroupCount = totalPageCount / vo.getCountPerGroup();
		if ( totalPageCount % vo.getCountPerGroup() != 0 ) totalGroupCount++;

		vo.setTotalGroupCount(totalGroupCount);
		System.out.println("totalPageCount : " + vo);
		
		// group작업
		int groupStartPage = (vo.getGroupNum() - 1) * vo.getCountPerGroup() + 1;
		int groupEndPage = vo.getGroupNum() * vo.getCountPerGroup();
		
		if (groupEndPage >= vo.getTotalPageCount()) {
			groupEndPage = vo.getTotalPageCount();
		}
		
		vo.setGroupStartPage(groupStartPage);
		vo.setGroupEndPage(groupEndPage);
		
		return vo;
	}

	@Override
	public int applyFor(ApplicantVO vo) {
		System.out.println("## applyFor.do - service ##");
		System.out.println("applicant vo ==> " + vo);
		
		vo.setApplicant_name(vo.getApplicant_name());
		vo.setAd_id(vo.getAd_id());
		
		ApplicantVO chkApply = applicantDAO.chkApply(vo);
		System.out.println("====> chkApply : " + chkApply);
		
		int result = 0;
		if (chkApply == null) {
			applicantDAO.applyFor(vo);		
			result = 1;
			
		} else {
			System.out.println("===> chkApply.getAd_id() 값 : " + chkApply.getAd_id());
			result = 0;
		}
		
		return result;
	}

	@Override
	public ApplicantVO chkApply(String applicant_name, int ad_id) {
		System.out.println("## applyFor service - chkapply ##");
		System.out.println("applicant_name: "+applicant_name);
		System.out.println("ad_id: "+ad_id);
		
		ApplicantVO vo = new ApplicantVO();
		vo.setApplicant_name(applicant_name);
		vo.setAd_id(ad_id);
		
		return applicantDAO.chkApply(vo);
	}
	
	
	
	
	
	

}
