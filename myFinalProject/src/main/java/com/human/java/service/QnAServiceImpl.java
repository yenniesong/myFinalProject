package com.human.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.QnADAO;
import com.human.java.domain.QnAVO;

@Service("QnAService")
public class QnAServiceImpl implements QnAService {

	@Autowired
	private QnADAO qnaDAO;
	
	@Override
	public void insertQnABoard(QnAVO vo) {
		System.out.println("## insertQnABoard service 진입 ##");
		qnaDAO.insertQnABoard(vo);
		
	}

	@Override
	public QnAVO getQnABoard(QnAVO vo) {
		System.out.println("## getQnABoard service 진입 ##");
		
		return qnaDAO.getQnABoard(vo);
	}

	@Override
	public List<QnAVO> getQnAList(QnAVO vo) {
		System.out.println("## getQnAList service 진입 ##");
		return qnaDAO.getQnAList(vo);
	}

	@Override
	public QnAVO chkPwd(QnAVO vo) {
		System.out.println("## chkPwd service 진입 ##");
		return qnaDAO.chkPwd(vo);
	}

}
