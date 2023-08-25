package com.human.java.dao;

import java.util.List;

import com.human.java.domain.PagingVO;
import com.human.java.domain.ResumeVO;

public interface ResumeDAO {
	
	//이력서 리스트 조회
	List<ResumeVO> getResumeList(PagingVO vo);
	
	//이력서 카운트
	PagingVO getResumeListCount(String userId);
	
	//이력서 작성
	void insertResume(ResumeVO vo);
	
	//이력서 상세 페이지
	ResumeVO getResume(ResumeVO vo);
	
	//이력서 정보 변경을 위한 조회
	ResumeVO getResumeForUpdating(ResumeVO vo);
	
	//이력서 업데이트
	void updateResume(ResumeVO vo);
	
	//이력서 삭제
	void deleteResume(ResumeVO vo);

}
