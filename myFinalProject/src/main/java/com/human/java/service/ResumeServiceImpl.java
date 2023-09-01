package com.human.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.ResumeDAO;
import com.human.java.domain.PagingVO;
import com.human.java.domain.ResumeVO;

@Service("ResumeService")
public class ResumeServiceImpl implements ResumeService{
	
	@Autowired
	private ResumeDAO resumeDAO;

	@Override
	public List<ResumeVO> getResumeList(PagingVO vo) {
		// TODO Auto-generated method stub
		System.out.println("## getResumeList - service ##");
		
		int startPage = (vo.getPageNum() - 1 ) * vo.getCountPerPage() + 1;
		int endPage = vo.getPageNum() * vo.getCountPerPage();
		
		vo.setStartPage(startPage);
		vo.setEndPage(endPage);
		
		return resumeDAO.getResumeList(vo);
	}

	@Override
	public PagingVO getResumeListCount(int groupNum, String userId) {
		// TODO Auto-generated method stub
		PagingVO vo = resumeDAO.getResumeListCount(userId);
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
	public ResumeVO getResume(ResumeVO vo) {
		System.out.println("## getRecruit service 진입 ##");
		System.out.println("getRecruit vo: "+vo);
		
		return resumeDAO.getResume(vo);
	}

	@Override
	public void insertResume(ResumeVO vo) {
		// TODO Auto-generated method stub
				System.out.println("## insertRecruit service 진입 ##");
				resumeDAO.insertResume(vo);
		
	}

	@Override
	public ResumeVO getResumeForUpdating(ResumeVO vo) {
		// TODO Auto-generated method stub
				System.out.println("## getRecruitForUpdating service 진입 ##");
				return resumeDAO.getResumeForUpdating(vo);
	}

	@Override
	public void updateResume(ResumeVO vo) {
		// TODO Auto-generated method stub
				System.out.println("## updateResume service 진입 ##");
				resumeDAO.updateResume(vo);
		
	}

	@Override
	public void deleteResume(ResumeVO vo) {
		// TODO Auto-generated method stub
				System.out.println("## deleteRecruit service 진입 ##");
				resumeDAO.deleteResume(vo);
		
	}

	@Override
	public void selectUser_id(String attribute) {
		// TODO Auto-generated method stub
		
	}

}
