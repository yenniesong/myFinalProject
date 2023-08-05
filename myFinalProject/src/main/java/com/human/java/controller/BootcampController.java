package com.human.java.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.java.domain.BootcampVO;
import com.human.java.service.BootcampService;

@Controller
@RequestMapping("/bootcamp/")
public class BootcampController {
	
	@Autowired
	private BootcampService bootcampService;
	
	@RequestMapping("{url}.do")
	public String viewPage(@PathVariable String url) {
		System.out.println("## Bootcamp Controller 진입 ## " + url);
		
		return "/bootcamp/" + url;
	}
	
	
	@RequestMapping("/login.do")
	public String bootcampLogin(BootcampVO vo, HttpSession session) {
		System.out.println("## bootcampLogin.do 진입 ##");
		
		System.out.println("## id : " + vo.getUserId());
		System.out.println("## pwd : " + vo.getPassword());

		BootcampVO result = bootcampService.idCheck_Login(vo);
		
		// 4. 맞으면 성공(객체 생성) 틀리면 실패(null)
		if (result == null || result.getUserId() == null) {
			// 결과 없을 때
			return "/bootcamp/bootcampLogin";
		} else {
			System.out.println("[ " + result.getUserId() + " ] 로그인 성공");
			
			
			// 세션에 login 이름에 사용자 이름 저장
//			session.setAttribute("loginFg","s");
			session.setAttribute("loginFg","b");
			
			session.setAttribute("userId", result.getUserId());
			session.setAttribute("bootcamp_name", result.getBootcamp_name());
			session.setAttribute("bootcamp_Manager", result.getBootcamp_manager());
			session.setAttribute("bootcamp_id", result.getBootcamp_id());
			
			session.setAttribute("sessionTime", new Date().toLocaleString());
			
			// 있을 경우 연결하는 페이지
//			return "redirect:/qnaBoard/getQnAList.do";	// 리턴에는 /user/ 꼭 써줘야함
//			return "redirect:/course/getCourseList.do";	// 리턴에는 /user/ 꼭 써줘야함
			return "redirect:/teacher/getTeacherList.do";	// 리턴에는 /user/ 꼭 써줘야함
		}
	}
	
	
}
