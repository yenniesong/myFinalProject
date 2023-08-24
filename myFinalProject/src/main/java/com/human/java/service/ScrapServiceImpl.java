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
		System.out.println("## getScrapList service ##");
		return scrapDAO.getScrapList(vo);
	}

	@Override
	public int insertScrap(ScrapVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## insertScrap service ##");
		System.out.println("vo: "+vo);
		
		vo.setUserId(vo.getUserId());
		vo.setAd_id(vo.getAd_id());
		
		ScrapVO chkResult = scrapDAO.chkScrap(vo);
		System.out.println("chkResult: "+chkResult);
		
		int result = 0;
		if (chkResult == null) {
			scrapDAO.insertScrap(vo);
			result = 1;
		} else {
			System.out.println("chkResult.getAd_id(): "+chkResult.getAd_id());
			result = 0;
		}
		
		return result;
	}

	@Override
	public ScrapVO chkScrap(String userId, int ad_id) {
		// TODO Auto-generated method stub
		System.out.println("## insertScrap service - chkScrap ##");
		System.out.println("userId: "+userId);
		System.out.println("ad_id: "+ad_id);
		
		ScrapVO vo = new ScrapVO();
		vo.setUserId(userId);
		vo.setAd_id(ad_id);
		
		return scrapDAO.chkScrap(vo);
	}

	@Override
	public void deleteScrap(ScrapVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## deleteScrap service ##");
		scrapDAO.deleteScrap(vo);
		
	}

	

}
