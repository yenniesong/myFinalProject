package com.human.java.dao;

import java.util.List;
import com.human.java.domain.ScrapVO;

public interface ScrapDAO {

	List<ScrapVO> getScrapList(ScrapVO vo);
    void insertScrap(ScrapVO vo);
    void deleteScrap(ScrapVO vo);

}
