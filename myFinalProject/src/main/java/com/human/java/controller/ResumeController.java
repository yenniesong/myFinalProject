package com.human.java.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.java.domain.PagingVO;
import com.human.java.domain.ResumeVO;
import com.human.java.service.ResumeService;

@Controller
@RequestMapping("/resume/")
public class ResumeController {

	@Autowired
	private ResumeService resumeService;
	
	//기본 mapping
	@RequestMapping("{url}.do")
	public String viewPage(@PathVariable String url) {
		System.out.println("## resume Controller ## "+url);
		return "/resume/"+url;
	}
	
	//getResumeList
	@RequestMapping("getResumeList.do")
	public String getResumeList(Model model, PagingVO pVO, HttpSession session) {
		System.out.println("## getResumeList.do - Controller ##");
		System.out.println("시작 그룹번호 : " + pVO.getGroupNum() );
		System.out.println("시작 페이지번호 : " + pVO.getPageNum() );
		
		// 총 페이지에 대한 개념
		PagingVO pInfoVo = resumeService.getResumeListCount(pVO.getGroupNum(), pVO.getUserId());	// 얘는 조회만 하면 되서 넘겨주는게 없음
		
		// pVo : startPageNum / endPage 
		List<ResumeVO> rList = resumeService.getResumeList(pVO);
		
		model.addAttribute("scrapList", rList);
		model.addAttribute("pInfoVo", pInfoVo);
		System.out.println("ResumeList : " + rList);
		System.out.println("pInfoVo : " + pInfoVo);
		return "/resume/resumeList";
	}
	
	//상세페이지
	@RequestMapping("getResume.do")
	public String getresume(ResumeVO vo, Model model, HttpSession session) {
		System.out.println("## getResume.do - controller ##");
		System.err.println("## Resume Number: "+vo.getResume_id()+" ##");
		vo = resumeService.getResume(vo);
		model.addAttribute("resume", resumeService.getResume(vo));
		System.out.println("resume vo: "+vo);
		return "/resume/resumeInDetail";
	}
	
	//이력서등록
		@RequestMapping("insertResume.do")
		public String insertResume(ResumeVO vo, HttpSession session) {
			System.out.println("## insertResume.do - controller ##");
			resumeService.insertResume(vo);
			System.out.println("## insert vo: "+vo);
			vo.setUserId((String)session.getAttribute("userId"));
			vo.setUser_name((String)session.getAttribute("name"));
			
			return "redirect:/resume/getResumeList.do";
		}
	
	//수정 페이지 불러오기
		@RequestMapping("getResumeForUpdating.do")
		public String goResumeForUpdating (ResumeVO vo, Model model) {
			System.out.println("## getResumeForUpdating.do - controller ##");
			System.out.println("## Resume Number: "+vo.getResume_id()+ "##");
			model.addAttribute("Resume", resumeService.getResumeForUpdating(vo));
			
			return "/Resume/ResumeUpdating";
		}
		
	//수정
		@RequestMapping("updateResume.do")
		public String updateResume(ResumeVO vo) {
			
			System.out.println("## updateResume.do - controller ##");
			System.out.println("## update vo: "+vo);
			resumeService.updateResume(vo);
			return "redirect:/Resume/getResumeList.do";
			
		}
		
	//삭제
		@RequestMapping("deleteResume.do")
		public String deleteResume(ResumeVO vo) {
			System.out.println("## deleteResume.do - controller ##");
			System.out.println("## Resume Number: "+vo.getResume_id()+" ##");
			resumeService.deleteResume(vo);
			return "redirect:/Resume/getResumeList.do";
		}
	
}
