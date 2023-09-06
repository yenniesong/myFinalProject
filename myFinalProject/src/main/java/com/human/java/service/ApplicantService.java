package com.human.java.service;

import java.util.List;

import com.human.java.domain.ApplicantVO;
import com.human.java.domain.PagingVO;
import com.human.java.domain.ScrapVO;

public interface ApplicantService {
	
	//applicant list
	List<ApplicantVO> getApplicantList(PagingVO vo);
	//applicant list count
	PagingVO getApplicantListCount(int groupNum, String userId);
	
	int applyFor(ApplicantVO vo);

}
