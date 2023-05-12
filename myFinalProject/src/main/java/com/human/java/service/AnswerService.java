package com.human.java.service;

import java.util.List;

import com.human.java.domain.AnswerVO;

public interface AnswerService {

	// 댓글 조회
	AnswerVO getAnswer(AnswerVO vo);

	// 댓글 달기
	void writingAnswer(AnswerVO vo);

	List<AnswerVO> getAnswerList(AnswerVO vo);
}
