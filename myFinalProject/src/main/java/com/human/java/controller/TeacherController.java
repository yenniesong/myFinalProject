package com.human.java.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.human.java.domain.BootcampVO;
import com.human.java.domain.ReviewVO;
import com.human.java.domain.TeacherVO;
import com.human.java.service.BootcampService;
import com.human.java.service.ReviewService;
import com.human.java.service.TeacherService;

@Controller
@RequestMapping("/teacher/")
public class TeacherController {
	
	@Autowired
	private TeacherService teacherService;
	@Autowired
	private BootcampService bootcampService;
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("{url}.do")
	public String viewPage(@PathVariable String url) { 
		System.out.println("## Teacher Controller 진입 ## " + url);
		
		return "/teacher/" + url;
	}
	
	// 강사 리스트 불러오기
	@RequestMapping("getTeacherList.do")
	public String getTeacherList(TeacherVO vo, Model model, HttpSession session, BootcampVO bVO) {
		System.out.println("## getTeacherList.do 진입 ##");
//		String userId = (String)session.getAttribute("userId");
//		int bootcamp_id = (Integer)session.getAttribute("bootcamp_id");
//		String bootcamp_name = (String)session.getAttribute("bootcamp_name");
//		System.out.println("===> userId : " + userId);
//		System.out.println("===> bootcamp_id : " + bootcamp_id);
//		System.out.println("===> bootcamp_name : " + bootcamp_name);
		
//		vo.setUserId(userId);
		
		List<TeacherVO> tList = teacherService.getTeacherList(vo);
		
		model.addAttribute("tList", tList);
		System.out.println("tList : " + tList.size());
		
		List<BootcampVO> bList = bootcampService.bootcampList();
		
		model.addAttribute("bList", bList);
		
		return "/teacher/teacherList";
	}
	
	// 강사 상세페이지 조회하기
	@RequestMapping("getTeacher.do")
	public String getTeacher(TeacherVO vo, Model model, ReviewVO rVo, BootcampVO bVo, HttpSession session) {
		System.out.println("## getTeacher.do 진입 ##");
		System.out.println("## 선생님 번호 : " + vo.getTeacher_id() + " ##");
		
		vo = teacherService.getTeacher(vo);
		
		// bootcamp_id 추출
	    System.out.println("bootcamp_id: " + vo.getBootcamp_id());
		model.addAttribute("teacher", teacherService.getTeacher(vo));
		
		System.out.println("teacher vo : " + vo);
		System.out.println("rVO : " + rVo); 
		
		List<ReviewVO> rList = reviewService.getTReviewList(rVo);
		System.out.println("댓글 수 : " + rList.size());
		model.addAttribute("rList", rList);
		
		return "/teacher/teacherInDetail";
	}
	
	// 강사 등록
	@RequestMapping("insertTeacher.do")
	public String insertTeacher(TeacherVO vo, HttpSession session) {
		// 학원 아이디 등록해주기 세션에
		System.out.println("## insertTeacher.do 진입 ##");
		
		teacherService.selectBootcamp_id((String)session.getAttribute("userId"));
		
		System.out.println("====> Bootcamp_name : " + vo.getBootcamp_name());
		System.out.println("====> Course_id : " + vo.getCourse_id());
		System.out.println("====> Short_description : " + vo.getShort_description());
		System.out.println("====> position : " + vo.getPosition_id()); 
		System.out.println("## 파일 이름 : " + vo.getFname() + " ##"); 
		System.out.println("## 파일 영어 이름 : " + vo.getFname_en() + " ##");
		System.out.println("## 파일 크기 : " + vo.getFsize() + " ##");
		
		teacherService.insertTeacher(vo);
		vo.setUserId((String)session.getAttribute("userId"));
		vo.setBootcamp_name((String)session.getAttribute("bootcamp_name"));
		
		return "redirect:/teacher/getTeacherList.do";
	}
	
	// 수정페이지를 불러오기
	@RequestMapping("getTeacherForUpdating.do")
	public String getTeacherForUpdating(TeacherVO vo, Model model) {
		System.out.println("## getTeacherForUpdating.do 진입 ##");
		System.out.println("## 선생님 번호 : " + vo.getTeacher_id() + " ##");
		System.out.println("## 선생님의 학원 번호 : " + vo.getBootcamp_id() + " ##");
		
		model.addAttribute("teacher", teacherService.getTeacherForUpdating(vo));
		
		return "/teacher/teacherUpdating";
	}
	
	// 강사 페이지 정보 수정
	// 강사 넘버를 받아야함(조회를 할때 계속 번호로 받아오면 이거랑 getTeacher.do랑 한번만 조회해도 되는지 아니면 따로 업데이트를 위한 조회를 하나 더 만들어야하는지 물어보기)
	@RequestMapping("updateTeacher.do")
	public String updateTeacher(TeacherVO vo) {
		System.out.println("## updateTeacher.do 진입 ##");
		System.out.println("## 선생님 번호 : " + vo.getTeacher_id() + " ##");
		System.out.println("## 선생님 이름 : " + vo.getTeacher_name() + " ##");
		System.out.println("====> Bootcamp_id : " + vo.getBootcamp_id());
		System.out.println("====> Bootcamp_name : " + vo.getBootcamp_name());
		System.out.println("====> Short_description : " + vo.getShort_description());
		System.out.println("====> description : " + vo.getDescription());
		System.out.println("====> position : " + vo.getPosition_id());
		System.out.println("## 파일 이름 : " + vo.getFname() + " ##");
		System.out.println("## 파일 영어 이름 : " + vo.getFname_en() + " ##");
		System.out.println("## 파일 크기 : " + vo.getFsize() + " ##");
		
		teacherService.updateTeacher(vo);
		
		return "redirect:/teacher/getTeacherList.do";
	}
	
	// 강사 페이지 삭제
	@RequestMapping("deleteTeacher.do")
	public String deleteTeacher(TeacherVO vo) {		// int로 받을지 고민(위에 수정도)
		System.out.println("## deleteTeacher.do 진입 ##");
		System.out.println("## 선생님 번호 : " + vo.getTeacher_id() + " ##");
		
		teacherService.deleteTeacher(vo);
		
		return "redirect:/teacher/getTeacherList.do";
	}
	
	// 댓글 등록
	@RequestMapping("writingReview.do")
	public String WritingReview(ReviewVO vo) {
		System.out.println("## WritingReview.do 진입 ##");
		
		System.out.println("====> userId : " + vo.getUserId());
		System.out.println("====> teacher_id : " + vo.getTeacher_id());
		System.out.println("====> name : " + vo.getName());
		System.out.println("====> content : " + vo.getContent());
		System.out.println("====> star_point : " + vo.getStar_point());
		
		reviewService.writingReview(vo);
		System.out.println("====> teacher_id : " + vo.getTeacher_id());
		
		return "redirect:/teacher/getTeacher.do?teacher_id=" + vo.getTeacher_id();
		
	}
//	
//	// 선생님의 강의가 열렸는지 안열렸는지 확인
//	@ResponseBody
//	@RequestMapping("chkCourse.do")
//	public int chkCourse(int teacher_id) {
//		System.out.println("## chkCourse.do 진입 ##");
//		
//		System.out.println("teacherInDetail에서 받은 teacher_id : " + teacher_id);
//		
//		int chkResult = teacherService.chkCourse(teacher_id);
//		
//		System.out.println("chkResult : " + chkResult);
//		
//		return chkResult;
//	}
//	
	// 상단 학원 명 눌렀을 때 해당 학원 강사 출력
	@RequestMapping("searchBootcampList.do")
	@ResponseBody
	public HashMap<String, List<TeacherVO>> searchBootcampList(TeacherVO vo) {
		System.out.println("## ajax를 이용한 searchBootcampList.do 진입 ##");
		System.out.println("bootcampName: " + vo.getBootcamp_name());
		
		List<TeacherVO> bootcampNameList = teacherService.searchBootcampList(vo);
		System.out.println(bootcampNameList.size());
		
		HashMap<String, List<TeacherVO>> map = new HashMap<String, List<TeacherVO>>();
		map.put("bootcampNameList", bootcampNameList);
		
		return map;
	}
	
	// 상단 과목 명 눌렀을 때 해당 학원 강사 출력
	@RequestMapping("searchPositionList.do")
	@ResponseBody
	public HashMap<String, List<TeacherVO>> searchPositionList(TeacherVO vo) {
		System.out.println("## ajax를 이용한 searchPositionList.do 진입 ##");
		System.out.println("position: " + vo.getPosition());
		
		List<TeacherVO> positionList = teacherService.searchPositionList(vo);
		System.out.println(positionList.size());
		
		HashMap<String, List<TeacherVO>> map = new HashMap<String, List<TeacherVO>>();
		map.put("positionList", positionList);
		
		return map;
	}

}
