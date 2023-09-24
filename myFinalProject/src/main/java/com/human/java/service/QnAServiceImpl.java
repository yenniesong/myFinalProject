package com.human.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.QnADAO;
import com.human.java.domain.PagingVO;
import com.human.java.domain.QnAVO;

@Service("QnAService")
public class QnAServiceImpl implements QnAService {

	@Autowired
	private QnADAO qnaDAO;
	
	@Override
	public void insertQnABoard(QnAVO vo) {
		qnaDAO.insertQnABoard(vo);
	}

	@Override
	public QnAVO getQnABoard(QnAVO vo) {
		return qnaDAO.getQnABoard(vo);
	}

	@Override
	public List<QnAVO> getQnAList(PagingVO vo) {
		
		int startPage = (vo.getPageNum() - 1 ) * vo.getCountPerPage() + 1;
		int endPage = vo.getPageNum() * vo.getCountPerPage();
		
		vo.setStartPage(startPage);
		vo.setEndPage(endPage);
		
		return qnaDAO.getQnAList(vo);
	}
	
	@Override
	public PagingVO getQnAListCount(int groupNum, String userId) {
		
		PagingVO vo = qnaDAO.getQnAListCount(userId);
		vo.setGroupNum(groupNum);
		
		int totalPageCount = vo.getTotalCount() / vo.getCountPerPage();
		if ( vo.getTotalCount() % vo.getCountPerPage() != 0 ) totalPageCount++;
		
		vo.setTotalPageCount(totalPageCount);
		
		int totalGroupCount = totalPageCount / vo.getCountPerGroup();
		if ( totalPageCount % vo.getCountPerGroup() != 0 ) totalGroupCount++;

		vo.setTotalGroupCount(totalGroupCount);
		
		int groupStartPage = (vo.getGroupNum() - 1) * vo.getCountPerGroup() + 1;
		int groupEndPage = vo.getGroupNum() * vo.getCountPerGroup();
		
		if (groupEndPage >= vo.getTotalPageCount()) {
			groupEndPage = vo.getTotalPageCount();
		}
		
		vo.setGroupStartPage(groupStartPage);
		vo.setGroupEndPage(groupEndPage);
		
		return vo;
	}

	@Override
	public QnAVO chkPwd(QnAVO vo) {
		return qnaDAO.chkPwd(vo);
	}

	@Override
	public List<QnAVO> findMyQuestion(QnAVO vo) {
		return qnaDAO.findMyQuestion(vo);
	}

	@Override
	public QnAVO goingToWriting(QnAVO vo) {
		return qnaDAO.goingToWriting(vo);
	}

}
