package com.human.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.ReviewDAO;
import com.human.java.domain.ReviewVO;

@Service("ReviewService")
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewDAO reviewDAO;
	
	@Override
	public List<ReviewVO> getTReviewList(ReviewVO rVo) {
		System.out.println("## getTReviewList service 진입 ##");
		return reviewDAO.getTReviewList(rVo);
	}

	@Override
	public void writingReview(ReviewVO vo) {
		System.out.println("## writingReview service 진입 ##");
		
		reviewDAO.writingReview(vo);
	}

}
