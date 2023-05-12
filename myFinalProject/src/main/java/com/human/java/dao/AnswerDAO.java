package com.human.java.dao;

import java.util.List;

import com.human.java.domain.AnswerVO;
import com.human.java.domain.QnAVO;

public interface AnswerDAO {

	// 댓글 조회
	AnswerVO getAnswer(AnswerVO vo);

	// 댓글 작성
	void writingAnswer(AnswerVO vo);

	List<AnswerVO> getAnswerList(AnswerVO vo);
	
}
