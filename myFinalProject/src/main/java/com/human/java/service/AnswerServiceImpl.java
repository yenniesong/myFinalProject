package com.human.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.AnswerDAO;
import com.human.java.domain.AnswerVO;
import com.human.java.domain.QnAVO;

@Service("AnswerService")
public class AnswerServiceImpl implements AnswerService {

	@Autowired
	private AnswerDAO answerDAO;
	
	@Override
	public AnswerVO getAnswer(AnswerVO vo) {
		System.out.println("## getAnswer service 진입 ##");

		return answerDAO.getAnswer(vo);
	}

	@Override
	public void writingAnswer(AnswerVO vo) {
		System.out.println("## writingReply service 진입 ##");
		
		answerDAO.writingAnswer(vo);		
	}

	@Override
	public List<AnswerVO> getAnswerList(AnswerVO vo) {
		System.out.println("## getAnswerList service 진입 ##");

		System.out.println("vo : " + vo);
		
		return answerDAO.getAnswerList(vo);
	}

	@Override
	public AnswerVO getAnswerCount(AnswerVO aVO) {
		System.out.println("## getAnswerCount service 진입 ##");
		
		AnswerVO vo = answerDAO.getAnswerCount();
		vo.setBootcamp_id(aVO.getBootcamp_id());
		System.out.println("AnswerVO vo : " + vo);
		
		return vo;
	}

	
}
