package com.human.java.dao;

import java.util.List;

import com.human.java.domain.ReviewVO;

public interface ReviewDAO {

	List<ReviewVO> getTReviewList(ReviewVO rVo);

	void writingReview(ReviewVO vo);

}
