package com.human.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.domain.ReviewVO;

@Repository("ReviewDAO")
public class ReviewDAOImpl implements ReviewDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<ReviewVO> getTReviewList(ReviewVO rVo) {
		System.out.println("## getTReviewList dao 진입 ##");
		return mybatis.selectList("ReviewDAO.getTReviewList", rVo);
	}

	@Override
	public void writingReview(ReviewVO vo) {
		System.out.println("## writingReview dao 진입 ##");
		mybatis.insert("ReviewDAO.writingReview", vo);
	}

}
