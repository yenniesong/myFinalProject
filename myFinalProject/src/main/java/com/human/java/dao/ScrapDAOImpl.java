package com.human.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.domain.PagingVO;
import com.human.java.domain.ScrapVO;

@Repository("ScrapDAO")
public class ScrapDAOImpl implements ScrapDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<ScrapVO> getScrapList(PagingVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## getScrapList - DAOImpl ##");
		return mybatis.selectList("ScrapDAO.getScrapList",vo);
	}
	
	@Override
	public PagingVO getScrapListCount(String userId) {
		System.out.println("## getScrapListCount - DAOImpl ##");
		System.out.println("## getScrapListCount - DAOImpl userId ======> ## " + userId);
		
		return mybatis.selectOne("ScrapDAO.getScrapListCount", userId);
	}

	@Override
	public void insertScrap(ScrapVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## isnertScrap dao ##");
		mybatis.insert("ScrapDAO.insertScrap",vo);
		
	}

	@Override
	public int cntScrap(ScrapVO vo) {
		// TODO Auto-generated method stub
		int result = 0;
		result = mybatis.selectOne("ScrapDAO.cntScrap",vo);
		System.out.println("cntScrap - result (dao) "+result);
		return result;
	}

	@Override
	public ScrapVO chkScrap(ScrapVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## checkScrap dao ##");
		return mybatis.selectOne("ScrapDAO.chkScrap",vo);
	}

	@Override
	public void deleteScrap(ScrapVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## deleteScrap dao ##");
		mybatis.delete("ScrapDAO.deleteScrap",vo);
		
	}

	@Override
	public void deleteScrapList(String scrapId) {
		// TODO Auto-generated method stub
		System.out.println("## deleteScrapList dao ##");
		mybatis.delete("ScrapDAO.deleteScrapList",scrapId);
		
	}



	
	

}
