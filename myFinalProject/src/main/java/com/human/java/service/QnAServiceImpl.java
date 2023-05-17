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
		System.out.println("## insertQnABoard service 진입 ##");
		qnaDAO.insertQnABoard(vo);
		
	}

	@Override
	public QnAVO getQnABoard(QnAVO vo) {
		System.out.println("## getQnABoard service 진입 ##");
		
		return qnaDAO.getQnABoard(vo);
	}

	@Override
	public List<QnAVO> getQnAList(PagingVO vo) {
		System.out.println("## getQnAList service 진입 ##");

		// 서비스에서 하면 return이 하나만 되고 게시글에 대한 정보만 리턴!
		// 게시글에 대한 정보와 총 페이지수에 대한 정보는 섞이기 어려운 정보
		// => 별도의 서비스를 진행하는 게 더 좋음
			
		
		//int pageNum = vo.getPageNum();
//		int pageNum = 1; // 나중에 지울코드
		
		int startPage = (vo.getPageNum() - 1 ) * vo.getCountPerPage() + 1;
		int endPage = vo.getPageNum() * vo.getCountPerPage();
		
		vo.setStartPage(startPage);
		vo.setEndPage(endPage);
		
		return qnaDAO.getQnAList(vo);
	}
	
	@Override
	public PagingVO getQnAListCount(int groupNum, String userId) {
		System.out.println("## getQnAListCount service 진입 ##");
		
		PagingVO vo = qnaDAO.getQnAListCount(userId);
		vo.setGroupNum(groupNum);
		
		System.out.println("vo : " + vo);
		
		int totalPageCount = vo.getTotalCount() / vo.getCountPerPage();
		if ( vo.getTotalCount() % vo.getCountPerPage() != 0 ) totalPageCount++;
		
		vo.setTotalPageCount(totalPageCount);
		System.out.println("totalPageCount : " + vo);
		
		int totalGroupCount = totalPageCount / vo.getCountPerGroup();
		if ( totalPageCount % vo.getCountPerGroup() != 0 ) totalGroupCount++;

		vo.setTotalGroupCount(totalGroupCount);
		System.out.println("totalPageCount : " + vo);
		
		// group작업
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
		System.out.println("## chkPwd service 진입 ##");
		return qnaDAO.chkPwd(vo);
	}

	@Override
	public List<QnAVO> findMyQuestion(QnAVO vo) {
		System.out.println("## findMyQuestion service 진입 ##");
		return qnaDAO.findMyQuestion(vo);
	}

}
