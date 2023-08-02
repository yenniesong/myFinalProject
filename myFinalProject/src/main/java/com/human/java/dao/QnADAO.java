package com.human.java.dao;

import java.util.List;

import com.human.java.domain.PagingVO;
import com.human.java.domain.QnAVO;

public interface QnADAO {

	// 글 등록
	void insertQnABoard(QnAVO vo);
	
	// 글 상세 조회
	QnAVO getQnABoard(QnAVO vo);
	
	// 글 목록 조회
	List<QnAVO> getQnAList(PagingVO vo);

	// qna 게시글 비밀번호 조회
	QnAVO chkPwd(QnAVO vo);

	PagingVO getQnAListCount(String userId);

	List<QnAVO> findMyQuestion(QnAVO vo);

	// 글 등록 페이지로 가기 위한 데이터 전달 및 조
	QnAVO goingToWriting(QnAVO vo);
}
