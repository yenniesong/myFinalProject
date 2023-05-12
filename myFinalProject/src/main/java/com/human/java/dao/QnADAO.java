package com.human.java.dao;

import java.util.HashMap;
import java.util.List;

import com.human.java.domain.QnAVO;

public interface QnADAO {

	// 글 등록
	void insertQnABoard(QnAVO vo);
	
	// 글 상세 조회
	QnAVO getQnABoard(QnAVO vo);
	
	// 글 목록 조회
	List<QnAVO> getQnAList(QnAVO vo);

	// qna 게시글 비밀번호 조회
	QnAVO chkPwd(QnAVO vo);
}
