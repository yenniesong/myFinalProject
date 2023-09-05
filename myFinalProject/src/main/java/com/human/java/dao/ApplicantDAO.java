package com.human.java.dao;

import java.util.List;

import com.human.java.domain.ApplicantVO;
import com.human.java.domain.PagingVO;

public interface ApplicantDAO {
	
	//list
	List<ApplicantVO> getApplicantList(PagingVO vo);
	//count
	PagingVO getApplicantListCount(String userId);
	
	void applyFor(ApplicantVO vo);

}
