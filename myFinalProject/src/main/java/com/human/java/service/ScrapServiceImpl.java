package com.human.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.ScrapDAO;
import com.human.java.domain.ScrapVO;

@Service("ScrapService")
public class ScrapServiceImpl implements ScrapService {

	@Autowired
	private ScrapDAO scrapDAO;

	@Override
	public List<ScrapVO> getScrapList(ScrapVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## getScrapList - Service ##");
		return scrapDAO.getScrapList(vo);
	}

	@Override
	public void insertScrap(ScrapVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## insertScrap - service ##");
		scrapDAO.insertScrap(vo);
		
	}

	@Override
	public void deleteScrap(ScrapVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## deleteScrap -service ##");
		scrapDAO.deleteScrap(vo);
		
	}
	


}
