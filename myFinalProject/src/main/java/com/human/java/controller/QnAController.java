package com.human.java.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.human.java.domain.AnswerVO;
import com.human.java.domain.PagingVO;
import com.human.java.domain.QnAVO;
import com.human.java.service.AnswerService;
import com.human.java.service.QnAService;

@Controller
@RequestMapping("/qnaBoard/")
public class QnAController {

	@Autowired
	private QnAService qnaService;
	@Autowired
	private AnswerService answerService;
	
	@RequestMapping("{url}.do")
	public String viewPage(@PathVariable String url) {
		return "/qnaBoard/" + url;
	}
	
	@RequestMapping("getQnAList.do")
	public String getQnAList(Model model, PagingVO pVO, HttpSession session) {
		pVO.setUserId((String) session.getAttribute("MyQuestion"));

		PagingVO pInfoVo = qnaService.getQnAListCount(pVO.getGroupNum(), pVO.getUserId());	// 얘는 조회만 하면 되서 넘겨주는게 없음
		
		List<QnAVO> qnaList = qnaService.getQnAList(pVO);
		
		model.addAttribute("qnaList", qnaList);
		model.addAttribute("pInfoVo", pInfoVo);
			
		return "/qnaBoard/qnaList";
	}
	
	@RequestMapping("chkPwd.do")
	@ResponseBody
	public String chkPwd(QnAVO vo, HttpServletResponse response, HttpSession session) throws IOException  {
		vo.setUserId((String)session.getAttribute("userId"));
		
		QnAVO result = qnaService.chkPwd(vo);
		
		return result + "";	
	}
	
	@RequestMapping("getQnABoard.do")
	public String getQnABoard(QnAVO vo, Model model, AnswerVO aVo, HttpSession session) {
		
		model.addAttribute("qna", qnaService.getQnABoard(vo));
		
		List<AnswerVO> aList = answerService.getAnswerList(aVo);
		
		model.addAttribute("aList", aList);
		
		return "/qnaBoard/qnaInDetail";
	}
	
	@RequestMapping("findMyQuestion.do")
	public String findMyQuestion(@RequestParam("userId") String userId, HttpSession session) {
		session.setAttribute("MyQuestion", userId);
		
		return "redirect:/qnaBoard/getQnAList.do";
	}
	
	@RequestMapping("allQuestion.do")
	public String allQuestion(HttpSession session) {
		session.removeAttribute("MyQuestion");
		
		return "redirect:/qnaBoard/getQnAList.do";
	}
	
	@RequestMapping("goingToWriting.do")
	public String goingToWriting(QnAVO vo, Model model) {
		model.addAttribute("userInfo", qnaService.goingToWriting(vo));
		
		return "/qnaBoard/qnaWriting";
	}
	
	@RequestMapping("insertQnABoard.do")
	public String insertQnABoard(QnAVO vo, HttpSession session) {
		qnaService.insertQnABoard(vo);
		
		return "redirect:/qnaBoard/getQnAList.do";
	}
	
	@RequestMapping("writingAnswer.do")
	
	public String writingReply(AnswerVO vo) {
		answerService.writingAnswer(vo);
		
		return "redirect:/qnaBoard/getQnAList.do";
	}
	
	
}
