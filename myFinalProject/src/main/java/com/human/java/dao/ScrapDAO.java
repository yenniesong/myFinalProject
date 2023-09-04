package com.human.java.dao;

import java.util.List;

import com.human.java.domain.PagingVO;
import com.human.java.domain.ScrapVO;

public interface ScrapDAO {

	//scrap list
	List<ScrapVO> getScrapList(PagingVO vo);
	PagingVO getScrapListCount(String userId);
	//insert
	void insertScrap (ScrapVO vo);
	//count scrap
	int cntScrap (ScrapVO vo);
	//check scrap
	ScrapVO chkScrap(ScrapVO vo);
	//delete scrap
	void deleteScrap(ScrapVO vo);
	//delete scrap list
	void deleteScrapList(String scrapId);

}
