package com.human.java.service;

import java.util.List;

import com.human.java.domain.RecruitVO;

public interface RecruitService {
	
	//공고 리스트 조회
		List<RecruitVO> getRecruitList(RecruitVO vo);
		
		//공고 상세페이지
		RecruitVO getRecruit(RecruitVO vo);
		
		//공고 추가
		void insertRecruit(RecruitVO vo);
		
		//공고 정보 변경을 위한 조회
		RecruitVO getRecruitForUpdating(RecruitVO vo);
		
		//공고 업데이트
		void updateRecruit(RecruitVO vo);
		
		//공고 삭제
		void deleteRecruit(RecruitVO vo);
		
		//회사 리스트 조회
		List<RecruitVO> searchCompanyList(RecruitVO vo);
		
		//학력 job_education
		List<RecruitVO> searchEducationList(RecruitVO vo);
		
		//포지션 job_position
		List<RecruitVO> searchPositionList(RecruitVO vo);
		
		//고용형태 hire_type
		List<RecruitVO> searchHireList(RecruitVO vo);
		
		//경력사항 job_career
		List<RecruitVO> searchCareerList(RecruitVO vo);
		
		//위치 조회 company_extra
		List<RecruitVO> searchExtraAddrList(RecruitVO vo);

		void selectCompany_id(String attribute);

}
