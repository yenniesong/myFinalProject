package com.human.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.domain.PagingVO;
import com.human.java.domain.QnAVO;

@Repository("QnADAO")
public class QnADAOImpl implements QnADAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void insertQnABoard(QnAVO vo) {
		mybatis.insert("QnADAO.insertQnABoard", vo);
	} 

	@Override
	public QnAVO getQnABoard(QnAVO vo) {
		return mybatis.selectOne("QnADAO.getQnABoard", vo);
	}

	@Override
	public List<QnAVO> getQnAList(PagingVO vo) {
		return mybatis.selectList("QnADAO.getQnAList",vo);
	}

	@Override
	public QnAVO chkPwd(QnAVO vo) {
		return mybatis.selectOne("QnADAO.chkPwd", vo);
	}

	@Override
	public PagingVO getQnAListCount(String userId) {
		return mybatis.selectOne("QnADAO.getQnAListCount", userId);
	}

	@Override
	public List<QnAVO> findMyQuestion(QnAVO vo) {
		return mybatis.selectList("QnADAO.findMyQuestion", vo);
	}

	@Override
	public QnAVO goingToWriting(QnAVO vo) {
		return mybatis.selectOne("QnADAO.goingToWriting", vo);
	}
	
}
