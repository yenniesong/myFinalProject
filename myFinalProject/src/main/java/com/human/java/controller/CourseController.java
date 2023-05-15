package com.human.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.java.service.CourseService;

@Controller
@RequestMapping("/course/")
public class CourseController {

	@Autowired
	private CourseService courseService;
	
	@RequestMapping("{url}.do")
	public String viewPage(@PathVariable String url) {
		System.out.println("## Course Controller 진입 ## " + url);
		return "/course/" + url;
	}
	
	// 강좌 리스트 부르기

	// 강좌 상세 페이지 조회
	
	// 강좌 등록
	
	// 강사 페이지 정보 수정
	
	// 강좌 삭제
	
}
