package com.human.java.dao;

import java.util.List;

import com.human.java.domain.ApplicantVO;
import com.human.java.domain.PagingVO;
import com.human.java.domain.ScrapVO;

public interface ApplicantDAO {
	
	//list
	List<ApplicantVO> getApplicantList(PagingVO vo);
	//count
	PagingVO getApplicantListCount(String userId);
	
	void applyFor(ApplicantVO vo);
	
	ApplicantVO chkApply (ApplicantVO vo);

}
