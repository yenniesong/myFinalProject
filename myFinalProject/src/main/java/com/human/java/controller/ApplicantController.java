package com.human.java.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.human.java.domain.ApplicantVO;
import com.human.java.domain.PagingVO;
import com.human.java.service.ApplicantService;

@Controller
@RequestMapping("/applicant/")
public class ApplicantController {
	
	@Autowired
	private ApplicantService applicantService;

	// list mapping
	@RequestMapping("getApplicantList.do")
	public String getApplicantList(Model model, PagingVO pVO, HttpSession session) {
		System.out.println("## getApplicantList.do - Controller ##");
		// 서비스에서 하면 return이 하나만 되고 게시글에 대한 정보만 리턴!
		// 게시글에 대한 정보와 총 페이지수에 대한 정보는 섞이기 어려운 정보
		// => 별도의 서비스를 진행하는 게 더 좋음
		System.out.println("시작 그룹번호 : " + pVO.getGroupNum());
		System.out.println("시작 페이지번호 : " + pVO.getPageNum());

		pVO.setUserId((String) session.getAttribute("userId"));

		System.out.println("pVO.setUserId((String)session.getAttribute 값 : " + pVO.getUserId());
		// 총 페이지에 대한 개념
		PagingVO pInfoVo = applicantService.getApplicantListCount(pVO.getGroupNum(), pVO.getUserId()); // 얘는 조회만 하면 되서 넘겨주는게 없음
		System.out.println("pInfoVo 값 : " + pInfoVo);

		// pVo : startPageNum / endPage
		List<ApplicantVO> ApplicantList = applicantService.getApplicantList(pVO);

		model.addAttribute("ApplicantList", ApplicantList);
		model.addAttribute("pInfoVo", pInfoVo);
		System.out.println("ApplicantList : " + ApplicantList);
		System.out.println("pInfoVo : " + pInfoVo);
		return "/applicant/applicantList";
	}
	
	// 지원하기
	@ResponseBody
	@RequestMapping("applyFor.do")
	public ApplicantVO applyFor(ApplicantVO vo, HttpSession session, HttpServletResponse response) {
		System.out.println("## applyFor.do - Controller ##");
		
		System.out.println("====> userId : " + vo.getUserId());
		System.out.println("====> applicant_name : " + vo.getApplicant_name()); 
		System.out.println("====> ad_id : " + vo.getAd_id());
		System.out.println("====> ad_title : " + vo.getAd_title());
		System.out.println("====> resume_id : " + vo.getResume_id());
		System.out.println("====> resume_title : " + vo.getResume_title());

		ApplicantVO insertResult = applicantService.chkApply(vo.getApplicant_name(), vo.getAd_id());
		
		if(insertResult==null) {
			applicantService.applyFor(vo);
		}
		else if(insertResult != null) {
			System.out.println("already apply");
		}
		
		return insertResult;

	}

}
