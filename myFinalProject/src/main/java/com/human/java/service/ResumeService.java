package com.human.java.service;

import java.util.List;

import com.human.java.domain.PagingVO;
import com.human.java.domain.ResumeVO;

public interface ResumeService {
	
	//이력서 리스트
	List<ResumeVO> getResumeList(PagingVO pVO);
	//이력서 카운트
	PagingVO getResumeListCount(int groupNum, String userId);
	//이력서 상세 페이지
	ResumeVO getResume(ResumeVO vo);
	//이력서 작성
	void insertResume(ResumeVO vo);
	//이력서 수정을 위한 조회
	ResumeVO getResumeForUpdating(ResumeVO vo);
	//이력서 수정
	void updateResume(ResumeVO vo);
	//이력서 삭제
	void deleteResume(ResumeVO vo);
	//userId session
	void selectUser_id(String attribute);

}
