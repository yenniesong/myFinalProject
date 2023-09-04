package com.human.java.service;

import java.util.List;

import com.human.java.domain.PagingVO;
import com.human.java.domain.ScrapVO;

public interface ScrapService {
	
	//스크랩 리스트
	List<ScrapVO> getScrapList(PagingVO pVO);
	//insert
	int insertScrap(ScrapVO vo);
	//check scrap
	ScrapVO chkScrap(String userId, int ad_id);
	//delete scrap
	void deleteScrap(ScrapVO vo);
	PagingVO getScrapListCount(int groupNum, String userId);
	//delete scrap list
	void deleteScrapList(String scrapId);
}
