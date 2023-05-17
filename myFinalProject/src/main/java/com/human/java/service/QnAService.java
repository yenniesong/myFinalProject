package com.human.java.service;

import java.util.List;

import com.human.java.domain.PagingVO;
import com.human.java.domain.QnAVO;

public interface QnAService {

	// 글 등록
	void insertQnABoard(QnAVO vo);
	
	// 글 상세 조회
	QnAVO getQnABoard(QnAVO vo);
	
	// 글 목록 조회
	List<QnAVO> getQnAList(PagingVO vo);

	// qna 게시글 비밀번호 조회
	QnAVO chkPwd(QnAVO vo);

	// 페이지수를 
	PagingVO getQnAListCount(int groupNum, String userId);

	// 내가 쓴 글 목록
	List<QnAVO> findMyQuestion(QnAVO vo);

	
	
	
}
