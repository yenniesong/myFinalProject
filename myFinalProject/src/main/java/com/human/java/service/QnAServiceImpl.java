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
	private int countPerPage = 10;
	
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

		// DAO 접근 , 전체 리스트 갯수를 가져오는 함수, DAO, MAPPER 생성
		
		int countList = 15;
		int countPage = countList/countPerPage;
		if ( countList%countPerPage != 0 ) countPage++;
		
		
		//int pageNum = vo.getPageNum();
		int pageNum = 1; // 나중에 지울코드
		int startPage = (pageNum-1)*countPerPage+1;
		int endPage = pageNum*countPerPage;
		
		vo.setStartPage(startPage);
		vo.setEndPage(endPage);
		
		return qnaDAO.getQnAList(vo);
	}

	@Override
	public QnAVO chkPwd(QnAVO vo) {
		System.out.println("## chkPwd service 진입 ##");
		return qnaDAO.chkPwd(vo);
	}

}
