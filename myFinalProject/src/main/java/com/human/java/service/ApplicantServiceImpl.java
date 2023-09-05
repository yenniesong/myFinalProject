package com.human.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.ApplicantDAO;
import com.human.java.domain.ApplicantVO;
import com.human.java.domain.PagingVO;

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
	public void applyFor(ApplicantVO vo) {
		System.out.println("## applyFor.do - service ##");
		System.out.println("applicant vo ==> " + vo);
		applicantDAO.applyFor(vo);		
	}

}
