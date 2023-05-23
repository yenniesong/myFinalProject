package com.human.java.service;

import java.util.List;

import com.human.java.domain.ReviewVO;

public interface ReviewService {

	List<ReviewVO> getTReviewList(ReviewVO rVo);

	void writingReview(ReviewVO vo);

}
