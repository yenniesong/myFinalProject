package com.human.java.dao;

import java.util.List;

import com.human.java.domain.PagingVO;
import com.human.java.domain.QnAVO;

public interface QnADAO {

	void insertQnABoard(QnAVO vo);
	
	QnAVO getQnABoard(QnAVO vo);
	
	List<QnAVO> getQnAList(PagingVO vo);

	QnAVO chkPwd(QnAVO vo);

	PagingVO getQnAListCount(String userId);

	List<QnAVO> findMyQuestion(QnAVO vo);

	QnAVO goingToWriting(QnAVO vo);
}
