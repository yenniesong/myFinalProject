package com.human.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.domain.ScrapVO;

@Repository("ScrapDAO")
public class ScrapDAOImpl implements ScrapDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<ScrapVO> getScrapList(ScrapVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## getScrapList 진입 - DAO ##");
		return mybatis.selectList("ScrapDAO.getScrapList", vo);
	}

	@Override
	public void insertScrap(ScrapVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## insertScrap 진입 - DAO ##");
		mybatis.insert("ScrapDAO.insertScrap",vo);
	}

	@Override
	public void deleteScrap(ScrapVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## deleteScrap 진입 - DAO ##");
		mybatis.delete("Scrap.deleteScrap",vo);
		
	}

}
