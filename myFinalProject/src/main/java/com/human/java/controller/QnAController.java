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
		System.out.println("## QnA Controller 진입 ## " + url);
		
		return "/qnaBoard/" + url;
	}
	
	@RequestMapping("getQnAList.do")
	public String getQnAList(Model model, PagingVO pVO) {
		System.out.println("## getQnAList.do 진입 ##");
				
		// 서비스에서 하면 return이 하나만 되고 게시글에 대한 정보만 리턴!
		// 게시글에 대한 정보와 총 페이지수에 대한 정보는 섞이기 어려운 정보
		// => 별도의 서비스를 진행하는 게 더 좋음
		System.out.println("시작 그룹번호 : " + pVO.getGroupNum() );
		System.out.println("시작 페이지번호 : " + pVO.getPageNum() );
		
		// 총 페이지에 대한 개념
		PagingVO pInfoVo = qnaService.getQnAListCount(pVO.getGroupNum());	// 얘는 조회만 하면 되서 넘겨주는게 없음
		
		// pVo : startPageNum / endPage 
		List<QnAVO> qnaList = qnaService.getQnAList(pVO);
		
		model.addAttribute("qnaList", qnaList);
		model.addAttribute("pInfoVo", pInfoVo);
		System.out.println("pInfoVo : " + pInfoVo);
		
		return "/qnaBoard/qnaList";
	}
	
	@RequestMapping("chkPwd.do")
	public String chkPwd(QnAVO vo, HttpServletResponse response, HttpSession session) throws IOException  {
		System.out.println("## chkPwd.do 진입 ##");
		vo.setUserId((String)session.getAttribute("userId"));
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
			
		} else if (result.getUserId() == null) {
			response.setCharacterEncoding("UTF-8");

			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();

			out.println("<script language='javascript'>");
			out.println("alert('본인이 아닙니다.);");
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
		
//		AnswerVO answerCnt = answerService.getAnswerList(vo.getQuestion_id());
		
		System.out.println("aVO : " + aVo);
;		
		List<AnswerVO> aList = answerService.getAnswerList(aVo);
		
//		if ( aList == null ) {
//			model.addAttribute("aListSize", 0);
//		}else {
//			model.addAttribute("aListSize", aList.size());
//			model.addAttribute("aList", aList);
//		}
		
//		System.out.println("aList : " + aList );
		
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
		// 나중에 지울것
		session.setAttribute("loginFg","s"); // ABC
		
		session.getAttribute("loginFg"); // ABC 
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
