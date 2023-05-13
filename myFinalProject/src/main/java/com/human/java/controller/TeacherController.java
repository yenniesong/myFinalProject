package com.human.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.java.service.TeacherService;

@Controller
@RequestMapping("/teacher/")
public class TeacherController {
	
	@Autowired
	private TeacherService teacherService;
	
	@RequestMapping("{url}.do")
	public String userViewPage(@PathVariable String url) {
		System.out.println("## Teacher Controller 진입 ## " + url);
		
		return "/teacher/" + url;
	}
	
	// 강사 리스트 불러오기
	
	// 강사 상세페이지 조회하기
	
	// 강사 페이지 정보 수정
	
	// 강사 페이지 삭제
}
