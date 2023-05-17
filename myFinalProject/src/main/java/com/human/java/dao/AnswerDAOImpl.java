package com.human.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.domain.AnswerVO;
import com.human.java.domain.QnAVO;

@Repository("AnswerDAO")
public class AnswerDAOImpl implements AnswerDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public AnswerVO getAnswer(AnswerVO vo) {
		System.out.println("## getAnswer dao 진입 ##");
		return mybatis.selectOne("AnswerDAO.getAnswer", vo);
	}

	@Override
	public void writingAnswer(AnswerVO vo) {
		System.out.println("## writingReply dao 진입 ##");
		
		mybatis.insert("AnswerDAO.writingAnswer", vo);		

	}

	@Override
	public List<AnswerVO> getAnswerList(AnswerVO vo) {
		System.out.println("## getAnswerList dao 진입 ##");
		
		return mybatis.selectList("AnswerDAO.getAnswerList", vo);
	}

	@Override
	public AnswerVO getAnswerCount() {
		System.out.println("## getAnswerCount dao 진입 ##");
		
		return mybatis.selectOne("AnswerDAO.getAnswerCount");
	}

}
