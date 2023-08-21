package com.human.java.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.human.java.domain.CourseVO;
import com.human.java.domain.ReviewVO;
import com.human.java.service.CourseService;
import com.human.java.service.ReviewService;

@Controller
@RequestMapping("/course/")
public class CourseController {

	@Autowired
	private CourseService courseService;
	@Autowired
	private ReviewService reviewService;
	 
	@RequestMapping("{url}.do")
	public String viewPage(@PathVariable String url) {
		System.out.println("## Course Controller 진입 ## " + url);
		return "/course/" + url;
	} 
	
	// 강좌 리스트 부르기
	@RequestMapping("getCourseList.do")
	public String getCourseList(CourseVO vo, Model model, HttpSession session) {
		System.out.println("## getCourseList.do 진입 ##");
		List<CourseVO> cList = courseService.getCourseList(vo);
		
		model.addAttribute("cList", cList);
		
		return "/course/courseList";
	}

	// 강좌 상세 페이지 조회
	@RequestMapping("getCourse.do")
	public String getCourse(CourseVO vo, Model model, ReviewVO cRVo, HttpSession session) {
		System.out.println("## getCourse.do 진입 ##");
		System.out.println("## 강좌 번호 : " + vo.getCourse_id() + " ##");
		
		vo = courseService.getCourse(vo);
		
		model.addAttribute("course", courseService.getCourse(vo));
		System.out.println("Course vo : " + vo);
		
		System.out.println("rVO : " + vo);
		
		List<ReviewVO> cRList = reviewService.getCReviewList(cRVo);
		
		System.out.println("cRVo : " + cRVo);
		
		model.addAttribute("cRList", cRList);
		
		
		
		return "/course/courseInDetail";
	}
	
	// 강좌 등록
	@RequestMapping("insertCourse.do")
	public String insertCourse(CourseVO vo, HttpSession session) {
		System.out.println("## insertCourse.do 진입 ##");
		System.out.println("====> Bootcamp_id : " + vo.getBootcamp_id());
		System.out.println("====> Bootcamp_name : " + vo.getBootcamp_name());
		System.out.println("====> Course_name : " + vo.getCourse_name());
		System.out.println("====> price : " + vo.getPrice());
		System.out.println("====> course_period : " + vo.getCourse_period());
		System.out.println("====> position : " + vo.getPosition_id());
		System.out.println("## 파일 이름 : " + vo.getFname() + " ##");
		System.out.println("## 파일 영어 이름 : " + vo.getFname_en() + " ##");
		System.out.println("## 파일 크기 : " + vo.getFsize() + " ##");
		
		courseService.insertCourse(vo);
		vo.setUserId((String)session.getAttribute("userId"));
//		vo.setBootcamp_id((Integer)session.getAttribute("bootcamp_id"));
		vo.setBootcamp_name((String)session.getAttribute("bootcamp_name"));
		
		return "redirect:/course/getCourseList.do";
	}
	
	// 정보 업데이트를 위한 이동
	@RequestMapping("goCourseForUpdating.do")
	public String goCourseForUpdating(CourseVO vo, Model model) {
		System.out.println("## goCourseForUpdating.do 진입 ##");
		System.out.println("## 강좌 번호 : " + vo.getCourse_id() + " ##");
		
		model.addAttribute("course", courseService.goCourseForUpdating(vo));
		
		return "/course/courseUpdating";
	}
	
	// 강사 페이지 정보 수정
	@RequestMapping("updateCourse.do")
	public String updateCourse(CourseVO vo) {
		System.out.println("## updateCourse.do 진입 ##");
		System.out.println("## 강좌 번호 : " + vo.getCourse_id() + " ##");
		System.out.println("## 강좌 이름 : " + vo.getCourse_name() + " ##");
		System.out.println("====> Bootcamp_id : " + vo.getBootcamp_id());
		System.out.println("====> Bootcamp_name : " + vo.getBootcamp_name());
		System.out.println("====> Course_name : " + vo.getCourse_name());
		System.out.println("====> price : " + vo.getPrice());
		System.out.println("====> course_period : " + vo.getCourse_period());
		System.out.println("====> position : " + vo.getPosition_id());
		System.out.println("## 파일 이름 : " + vo.getFname() + " ##");
		System.out.println("## 파일 영어 이름 : " + vo.getFname_en() + " ##");
		System.out.println("## 파일 크기 : " + vo.getFsize() + " ##");
		
		courseService.updateCourse(vo);
		
		return "redirect:/course/getCourseList.do";
	}
	
	// 강좌 삭제
	@RequestMapping("deleteCourse.do")
	public String deleteCourse(CourseVO vo) {
		System.out.println("## deleteCourse.do 진입 ##");
		System.out.println("## 강좌 번호 : " + vo.getCourse_id() + " ##");
		
		courseService.deleteCourse(vo);
		
		return "redirect:/course/getCourseList.do";
	}
	
	// 댓글 등록
	@RequestMapping("writingReview.do")
	public String WritingReview(ReviewVO vo) {
		System.out.println("## WritingReview.do 진입 ##");
		
		System.out.println("====> course_id : " + vo.getCourse_id());
		System.out.println("====> review_id : " + vo.getReview_id()); 
		System.out.println("====> bootcamp_name : " + vo.getName());
		System.out.println("====> content : " + vo.getContent());
		System.out.println("====> star_point : " + vo.getStar_point());
		
		reviewService.writingReview(vo);
		
		return "redirect:/course/getCourse.do?course_id=" + vo.getCourse_id();
		
	}
	
	// 지역별 검색
	@RequestMapping("searchRegionList.do") 
	@ResponseBody
	public HashMap<String, List<CourseVO>> searchRegionList(CourseVO vo) {
		System.out.println("## ajax를 이용한 searchRegionList.do 진입 ##");
		System.out.println("bootcamp_name: " + vo.getBootcamp_name());
		
		List<CourseVO> cousreGetregionList = courseService.searchRegionList(vo);
		System.out.println(cousreGetregionList.size());
		System.out.println(cousreGetregionList);
		
		HashMap<String, List<CourseVO>> map = new HashMap<String, List<CourseVO>>();
		map.put("regionList", cousreGetregionList);
		
		return map;
	}
	
	// 포지션별 검색
	@RequestMapping("searchPositionList.do")
	@ResponseBody
	public HashMap<String, List<CourseVO>> searchPositionList(CourseVO vo) {
		System.out.println("## ajax를 이용한 searchPositionList.do 진입 ##");
		System.out.println("position: " + vo.getPosition());
		
		List<CourseVO> positionList = courseService.searchPositionList(vo);
		System.out.println(positionList.size());
		
		HashMap<String, List<CourseVO>> map = new HashMap<String, List<CourseVO>>();
		map.put("positionList", positionList);
		
		return map;
	}
	
}
