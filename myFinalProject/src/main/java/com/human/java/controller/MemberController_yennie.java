package com.human.java.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.MemberVO;
import com.human.java.service.Y_MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController_yennie {
	
	@Autowired
	private Y_MemberService memberService;
	
	@RequestMapping("{url}.do")
	public String userViewPage(@PathVariable String url) {
		System.out.println("## Member Controller 진입 ## " + url);
		
		return "/member/" + url;
	}
	
	@RequestMapping("/userInsert.do")
	public ModelAndView userInsert(MemberVO vo) {
		System.out.println("## userInsert.do 진입 ##");
		
		// 데이터베이스에 등록 작업
		int result = memberService.userInsert(vo);
		System.out.println("결과 : " + result);
		String message = "가입이 되지 않았음ㅋ";
		
		if (result > 0) message = vo.getName() + " 님, 가입을 ㅊㅋ";
	
		// message와 result를 화면에 전달 >> Model & ModelAndView 사용
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/user/userJoin_ok");	// 보낼 주소
		mv.addObject("message", message);
		mv.addObject("result", result);
		
		return mv;
	}
	
	@RequestMapping("/login.do")
	public String userLogin(MemberVO vo, HttpSession session) {
		System.out.println("## login.do 진입 ##");
		
		System.out.println("## id : " + vo.getUserid());
		System.out.println("## pwd : " + vo.getPassword());

		MemberVO result = memberService.idCheck_Login(vo);
		
		// 4. 맞으면 성공(객체 생성) 틀리면 실패(null)
		if (result == null || result.getUserid() == null) {
			// 결과 없을 때
			return "/user/userLogin";
		} else {
			System.out.println("[ " + result.getUserid() + " ] 로그인 성공");
			
			
			// 세션에 login 이름에 사용자 이름 저장
			session.setAttribute("loginFg","s");
			
			session.setAttribute("name", result.getName());
			session.setAttribute("userId", result.getUserid());
			session.setAttribute("nickName", result.getNickname());
			session.setAttribute("academy", result.getAcademy());
			
			session.setAttribute("sessionTime", new Date().toLocaleString());
			
			// 있을 경우 연결하는 페이지
//			return "redirect:/qnaBoard/getQnAList.do";	// 리턴에는 /user/ 꼭 써줘야함
			return "redirect:/teacher/getTeacherList.do";	// 리턴에는 /user/ 꼭 써줘야함
		}
	}
	
	@RequestMapping("/memberInfo.do")
	public String userInfo(Model model, HttpSession session) {

		if (session.getAttribute("userId") == null) {
			return "redirect:/user/userLogin.do";
		}
		
		System.out.println("## memberInfo.do 진입 ##");
		
		List<MemberVO> mList = memberService.memberInfo();
		
		model.addAttribute("memberInfoList", mList);
		
		return "/user/memberInfo";
	}
	
	@RequestMapping("logOut.do")
	public ModelAndView logOut(HttpSession session) {
		System.out.println("## logOut.do 진입 ##");
		
		ModelAndView mv = new ModelAndView();
		
		session.removeAttribute("sessionTime");	// 한개 삭제
		
//		session.invalidate();	// 초기화, 모든 세션을 제거하기때문에 주의
		mv.setViewName("/user/userLogin");	// 페이지 전환
		
		return mv;
	}
}
