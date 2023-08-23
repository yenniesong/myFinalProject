package com.human.java.service;

import java.util.List;

import com.human.java.domain.ScrapVO;

public interface ScrapService {
	
	//스크랩 리스트
	List<ScrapVO> getScrapList(ScrapVO vo);
	//insert
	void insertScrap (ScrapVO vo);
	//delete
	void deleteScrap (ScrapVO vo);

}
