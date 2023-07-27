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
	
	// 글쓰기
	@Override
	public void insertQnABoard(QnAVO vo) {
		System.out.println("## insertQnABoard dao 진입 ##");
		mybatis.insert("QnADAO.insertQnABoard", vo);
		
	} 

	// 상세 보기
	@Override
	public QnAVO getQnABoard(QnAVO vo) {
		System.out.println("## getQnABoard dao 진입 ##");
		System.out.println("게시글 번호 in dao : " + vo.getQuestion_id());
		
		System.out.println("QnaVo : " + vo);
		return mybatis.selectOne("QnADAO.getQnABoard", vo);
	}

	// 리스트 불러오기
	@Override
	public List<QnAVO> getQnAList(PagingVO vo) {
		System.out.println("## getQnAList dao 진입 ##");
		return mybatis.selectList("QnADAO.getQnAList",vo);
	}

	@Override
	public QnAVO chkPwd(QnAVO vo) {
		System.out.println("## chkPwd dao 진입 ##");
		return mybatis.selectOne("QnADAO.chkPwd", vo);
	}

	@Override
	public PagingVO getQnAListCount(String userId) {
		System.out.println("## getQnAListCount dao 진입 ##");
		return mybatis.selectOne("QnADAO.getQnAListCount", userId);
	}

	@Override
	public List<QnAVO> findMyQuestion(QnAVO vo) {
		System.out.println("## findMyQuestion dao 진입 ##");
		return mybatis.selectList("QnADAO.findMyQuestion", vo);
	}
	
}
