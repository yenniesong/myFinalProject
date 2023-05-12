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
import org.springframework.web.bind.annotation.ResponseBody;

import com.human.java.domain.AnswerVO;
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
	public String userViewPage(@PathVariable String url) {
		System.out.println("## QnA Controller 진입 ## " + url);
		
		return "/qnaBoard/" + url;
	}
	
	@RequestMapping("getQnAList.do")
	public String getQnAList(QnAVO vo, Model model) {
		System.out.println("## getQnAList.do 진입 ##");
		
		List<QnAVO> qnaList = qnaService.getQnAList(vo);
				
		model.addAttribute("qnaList", qnaList);
		
		return "/qnaBoard/qnaList";
	}
	
//	@ResponseBody
	@RequestMapping("chkPwd.do")
	public String chkPwd(QnAVO vo, HttpServletResponse response) throws IOException  {
		System.out.println("## chkPwd.do 진입 ##");
		System.out.println("## 클릭한 Question_id : " + vo.getQuestion_id());
		System.out.println("## 클릭한 userId : " + vo.getUserId());
		System.out.println("## 입력한 Password : " + vo.getPassword());

		
		QnAVO result = qnaService.chkPwd(vo);
		
		if (result == null || result.getPassword() == null) {
			response.setCharacterEncoding("UTF-8");

			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();

			out.println("<script language='javascript'>");
			out.println("alert('비밀번호가 일치하지 않습니다.');");
			out.println("location.href='/qnaBoard/getQnAList.do';");
			out.println("</script>");
			out.close();
			
		}
		
		return "redirect:/qnaBoard/getQnABoard.do?question_id="+vo.getQuestion_id();	
	}
	
	@RequestMapping("getQnABoard.do")
	public String getQnABoard(QnAVO vo, Model model, AnswerVO aVo) {
		System.out.println("## getQnABoard.do 진입 ##");
		System.out.println("## 게시글 번호 : " + vo.getQuestion_id() + " ##");
		
		model.addAttribute("qna", qnaService.getQnABoard(vo));
		
		List<AnswerVO> aList = answerService.getAnswerList(aVo);
		
//		if ( aList == null ) {
//			model.addAttribute("aListSize", 0);
//		}else {
//			model.addAttribute("aListSize", aList.size());
//			model.addAttribute("aList", aList);
//		}
		
		System.out.println(aList);
		
		model.addAttribute("aList", aList);
		
		return "/qnaBoard/qnaInDetail";
	}
	
	@RequestMapping("insertQnABoard.do")
	public String insertQnABoard(QnAVO vo, HttpSession session) {
		System.out.println("## insertQnABoard.do 진입 ##");
		System.out.println("====> category_id : " + vo.getCategory_id());
		System.out.println("====> title : " + vo.getTitle());
		System.out.println("====> userId : " + vo.getUserId());
		System.out.println("====> name : " + vo.getName());
		System.out.println("====> academy : " + vo.getAcademy());
		System.out.println("====> password : " + vo.getPassword());
		System.out.println("====> content : " + vo.getContent());
		
		qnaService.insertQnABoard(vo);
		vo.setName((String)session.getAttribute("nickName"));
//		session.getAttribute("loginFg"); // ABC 
		System.out.println("====> name : " + vo.getName());
		
		return "redirect:/qnaBoard/getQnAList.do";
	}
	
	@RequestMapping("writingAnswer.do")
	public String writingReply(AnswerVO vo) {
		System.out.println("## writingAnswer.do 진입 ##");

		System.out.println("====> question_id : " + vo.getQuestion_id());
		System.out.println("====> bootcamp_id : " + vo.getBootcamp_id());
		System.out.println("====> bootcamp_name : " + vo.getBootcamp_name());
		System.out.println("====> content : " + vo.getContent());
		
		answerService.writingAnswer(vo);
		
		return "redirect:/qnaBoard/getQnAList.do";
	}
	
	
}
