package com.human.java.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.java.domain.EnrollmentVO;
import com.human.java.service.EnrollmentService;

@Controller
@RequestMapping("/enrollment/")
public class EnrollmentController {

	@Autowired
	private EnrollmentService enrollmentService;
	
	@RequestMapping("{url}.do")
	public String viewPage(@PathVariable String url) {
		System.out.println("## Enrollment Controller 진입 ## " + url);
		
		return "/enrollment/" + url;
	}
	
	@RequestMapping("getEnrollList.do")
	public String getEnrollList(Model model, EnrollmentVO vo, HttpSession session) {
		System.out.println("## getEnrollList.do 진입 ##");
		
		List<EnrollmentVO> eList = enrollmentService.getEnrollList(vo);
		
		model.addAttribute("eList", eList);
		
		return "/enrollment/enrollmentList";
	}
	
	@RequestMapping("insertEnrollment.do")
	public String insertEnrollment(EnrollmentVO vo, HttpSession session) {
		System.out.println("## insertEnrollment.do 진입 ##");
		
		enrollmentService.insertEnrollment(vo);
		session.setAttribute("loginFg", "b");
		session.getAttribute("loginFg");
		
		return "redirect:/enrollment/getEnrollList.do";
	}
}
