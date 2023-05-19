package com.human.java.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.java.domain.ReviewVO;
import com.human.java.domain.TeacherVO;
import com.human.java.service.TeacherService;

@Controller
@RequestMapping("/teacher/")
public class TeacherController {
	
	@Autowired
	private TeacherService teacherService;
	
	@RequestMapping("{url}.do")
	public String viewPage(@PathVariable String url) {
		System.out.println("## Teacher Controller 진입 ## " + url);
		
		return "/teacher/" + url;
	}
	
	// 강사 리스트 불러오기
	@RequestMapping("getTeacherList.do")
	public String getTeacherList(TeacherVO vo, Model model, HttpSession session) {
		System.out.println("## getTeacherList.do 진입 ##");
		
		
		
		List<TeacherVO> tList = teacherService.getTeacherList(vo);
		
		model.addAttribute("tList", tList);
		
		return "/teacher/teacherList";
	}
	
	// 강사 상세페이지 조회하기
	@RequestMapping("getTeacher.do")
	public String getTeacher(TeacherVO vo, Model model, ReviewVO rVo) {	// 추후에 학생들의 댓글(review vo 넣기)
		System.out.println("## getTeacher.do 진입 ##");
		System.out.println("## 선생님 번호 : " + vo.getTeacher_id() + " ##");
		
		vo = teacherService.getTeacher(vo);
		model.addAttribute("teacher", teacherService.getTeacher(vo));
		
		System.out.println("teacher vo : " + vo);
		
		return "/teacher/teacherInDetail";
	}
	
	// 강사 등록
	@RequestMapping("insertTeacher.do")
	public String insertTeacher(TeacherVO vo, HttpSession session) {
		// 학원 아이디 등록해주기 세션에
		System.out.println("## insertTeacher.do 진입 ##");
		System.out.println("====> Teacher_id : " + vo.getTeacher_id());
		System.out.println("====> Bootcamp_name : " + vo.getBootcamp_name());
		System.out.println("====> Course_name : " + vo.getCourse_name());
		System.out.println("====> Short_description : " + vo.getShort_description());
		System.out.println("## 파일 이름 : " + vo.getFname() + " ##");
		System.out.println("## 파일 크기 : " + vo.getFsize() + " ##");
		
		teacherService.insertTeacher(vo);
		vo.setUserId((String)session.getAttribute("userId"));
		vo.setBootcamp_name((String)session.getAttribute("bootcamp_name"));
		
		return "redirect:/teacher/getTeacherList.do";
	}
	
	// 강사 페이지 정보 수정
	// 강사 넘버를 받아야함(조회를 할때 계속 번호로 받아오면 이거랑 getTeacher.do랑 한번만 조회해도 되는지 아니면 따로 업데이트를 위한 조회를 하나 더 만들어야하는지 물어보기)
	@RequestMapping("updateTeacher.do")
	public String updateTeacher(TeacherVO vo) {
		System.out.println("## updateTeacher.do 진입 ##");
		System.out.println("## 선생님 번호 : " + vo.getTeacher_id() + " ##");
		
		teacherService.updateTeacher(vo);
		
		return "redirect:/teacher/getTeacher.do";
	}
	
	// 강사 페이지 삭제
	@RequestMapping("deleteTeacher.do")
	public String deleteTeacher(TeacherVO vo) {		// int로 받을지 고민(위에 수정도)
		System.out.println("## updateTeacher.do 진입 ##");
		System.out.println("## 선생님 번호 : " + vo.getTeacher_id() + " ##");
		
		teacherService.deleteTeacher(vo);
		
		return "redirect:/teacher/getTeacherList.do";
	}
}
