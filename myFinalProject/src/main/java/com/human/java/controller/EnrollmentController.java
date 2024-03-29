package com.human.java.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.human.java.domain.EnrollmentVO;
import com.human.java.domain.TeacherVO;
import com.human.java.service.EnrollmentService;
import com.human.java.service.TeacherService;

@Controller
@RequestMapping("/enrollment/")
public class EnrollmentController {

	@Autowired
	private EnrollmentService enrollmentService;
	
//	@Autowired
//	private TeacherService teacherService;
	
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
	
	@ResponseBody
	@RequestMapping("insertEnrollment.do")
	public int insertEnrollment(EnrollmentVO vo, HttpSession session, HttpServletResponse response) {
		System.out.println("## insertEnrollment.do 진입 ##");
		
		System.out.println("====> userId : " + vo.getUserId());
		System.out.println("====> name : " + vo.getName());
		System.out.println("====> bootcamp_name : " + vo.getBootcamp_name());
		System.out.println("====> teacher_id : " + vo.getTeacher_id());
		System.out.println("====> teacher_name : " + vo.getTeacher_name());
		System.out.println("====> course_id : " + vo.getCourse_id());
		System.out.println("====> course_name : " + vo.getCourse_name());

		int insertResult = enrollmentService.insertEnrollment(vo);
		
		return insertResult;
	}
}
