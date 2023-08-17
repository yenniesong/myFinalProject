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

import com.human.java.domain.RecruitVO;
import com.human.java.service.CompanyInfoService;
import com.human.java.service.RecruitService;

@Controller
@RequestMapping("/recruit/")
public class RecruitController {
	
	@Autowired
	private RecruitService recruitService;
	@Autowired
	private CompanyInfoService companyInfoService;
	
	//기본 mapping
	@RequestMapping("{url}.do")
	public String viewPage(@PathVariable String url) {
		System.out.println("## Recruit Controller ## "+url);
		return "/recruit/"+url;
	}
	
	//공고 리스트 불러오기
	@RequestMapping("getRecruitList.do")
	public String getRecruitList(RecruitVO vo, Model model, HttpSession session) {
		System.out.println("## getRecruitList.do - controller ##");
		List<RecruitVO> rList = recruitService.getRecruitList(vo);
		model.addAttribute("rList",rList);
		return "/recruit/recruitList";
	}
	
	//공고 상세페이지 조회하기
	@RequestMapping("getRecruit.do")
	public String gerRecruit(RecruitVO vo, Model model, HttpSession session) {
		System.out.println("## getRecruit.do - controller ##");
		System.err.println("## Recruit Number: "+vo.getAd_id()+" ##");
		vo = recruitService.getRecruit(vo);
		model.addAttribute("recruit", recruitService.getRecruit(vo));
		System.out.println("recruit vo: "+vo);
		return "/recruit/recruitInDetail";
	}
	
	//공고 등록
	@RequestMapping("insertRecruit.do")
	public String insertRecruit(RecruitVO vo, HttpSession session) {
		System.out.println("## insertRecruit.do - controller ##");
		System.out.println("=========== Recruit Data Info ===========");
		System.out.println("공고 번호: "+vo.getAd_id());
		System.out.println("작성자 아이디: "+vo.getUserId());
		System.out.println("작성 시간: "+vo.getRegdate());
		System.out.println("공고 제목: "+vo.getAd_title());
		System.out.println("=========== Recruit Company Info ===========");
		System.out.println("로고 파일 이름: "+vo.getCompany_logo());
		System.out.println("로고 파일 이름 암호화: "+vo.getCompany_logo_en());
		System.out.println("기업 이름: "+vo.getCompany_name());
		System.out.println("관리자 이메일: "+vo.getContact_email());
		System.out.println("관리자 이름: "+vo.getManager_name());
		System.out.println("공고 마감일: "+vo.getApplication_deadline());
		System.out.println("도로명 주소: "+vo.getCompany_road());
		System.out.println("상세주소: "+vo.getCompany_detail());
		System.out.println("참고항목: "+vo.getCompany_extra());
		System.out.println("=========== Recruit Condition Info ===========");
		System.out.println("경력사항: "+vo.getJob_experience());
		System.out.println("학력사항: "+vo.getJob_education());
		System.out.println("포지션: "+vo.getJob_position());
		System.out.println("프로그래밍 언어: "+vo.getProgramming_languages());
		System.out.println("수습기간: "+vo.getProbation_period());
		System.out.println("코딩테스트: "+vo.getCoding_test());
		System.out.println("고용형태: "+vo.getHire_type());
		System.out.println("급여: "+vo.getJob_salary());
		System.out.println("근무 일수: "+vo.getWorking_days());
		System.out.println("근무시간: "+vo.getWorking_hours());
		System.out.println("=========== Recruit Job Description Info ===========");
		System.out.println("상세설명: "+vo.getJob_description());
		
		recruitService.insertRecruit(vo);
		vo.setUserId((String)session.getAttribute("userId"));
		vo.setCompany_name((String)session.getAttribute("company_name"));
		
		return "redirect:/recruit/getRecruitList.do";
	}
	
	//공고 수정 페이지 불러오기
	@RequestMapping("goRecruitForUpdating.do")
	public String goRecruitForUpdating (RecruitVO vo, Model model) {
		System.out.println("## goRecruitForUpdating.do - controller ##");
		System.out.println("## recruit Number: "+vo.getAd_id()+ "##");
		model.addAttribute("recruit", recruitService.getRecruitForUpdating(vo));
		
		return "/recruit/recruitUpdating";
	}
	
	//공고 수정
	@RequestMapping("updateRecruit.do")
	public String updateRecruit(RecruitVO vo) {
		
		System.out.println("## updateRecruit.do - controller ##");
		System.out.println("=========== Recruit Data Info ===========");
		System.out.println("공고 번호: "+vo.getAd_id());
		System.out.println("작성자 아이디: "+vo.getUserId());
		System.out.println("작성 시간: "+vo.getRegdate());
		System.out.println("공고 제목: "+vo.getAd_title());
		System.out.println("=========== Recruit Company Info ===========");
		System.out.println("로고 파일 이름: "+vo.getCompany_logo());
		System.out.println("로고 파일 이름 암호화: "+vo.getCompany_logo_en());
		System.out.println("기업 이름: "+vo.getCompany_name());
		System.out.println("관리자 이메일: "+vo.getContact_email());
		System.out.println("관리자 이름: "+vo.getManager_name());
		System.out.println("공고 마감일: "+vo.getApplication_deadline());
		System.out.println("도로명 주소: "+vo.getCompany_road());
		System.out.println("상세주소: "+vo.getCompany_detail());
		System.out.println("참고항목: "+vo.getCompany_extra());
		System.out.println("=========== Recruit Condition Info ===========");
		System.out.println("경력사항: "+vo.getJob_experience());
		System.out.println("학력사항: "+vo.getJob_education());
		System.out.println("포지션: "+vo.getJob_position());
		System.out.println("프로그래밍 언어: "+vo.getProgramming_languages());
		System.out.println("수습기간: "+vo.getProbation_period());
		System.out.println("코딩테스트: "+vo.getCoding_test());
		System.out.println("고용형태: "+vo.getHire_type());
		System.out.println("급여: "+vo.getJob_salary());
		System.out.println("근무 일수: "+vo.getWorking_days());
		System.out.println("근무시간: "+vo.getWorking_hours());
		System.out.println("=========== Recruit Job Description Info ===========");
		System.out.println("상세설명: "+vo.getJob_description());
		
		recruitService.updateRecruit(vo);
		return "redirect:/recruit/getRecruitList.do";
		
	}
	
	//공고 삭제
	@RequestMapping("deleteRecruit.do")
	public String deleteRecruit(RecruitVO vo) {
		System.out.println("## deleteRecruit.do - controller ##");
		System.out.println("## recruit Number: "+vo.getAd_id()+" ##");
		recruitService.deleteRecruit(vo);
		return "redirect:/recruit/getRecruitList.do";
	}
	
	//회사 이름 눌렀을 때 해당 회사의 공고 출력
	@RequestMapping("searchCompanyList.do")
	@ResponseBody
	public HashMap<String, List<RecruitVO>> searchCompanyList(RecruitVO vo) {
		System.out.println("## ajax - searchCompanyList.do - controller ##");
		System.out.println("company name: "+vo.getCompany_name());
		
		List<RecruitVO> companyNameList = recruitService.searchCompanyList(vo);
		System.out.println(companyNameList.size());
		
		HashMap<String, List<RecruitVO>> map = new HashMap<String, List<RecruitVO>>();
		map.put("companyNameList", companyNameList);
		
		return map;
	}
	
	//ajax를 이용해 검색 기능 활성화
	//selectbox에서 학력 카테고리 값을 선택 시 선택한 값에 해당하는 공고 리스트 출력
	@RequestMapping("searchEducationList.do")
	@ResponseBody
	public HashMap<String, List<RecruitVO>> searchEducationList(RecruitVO vo) {
		System.out.println("## ajax - searchEducationList.do - controller ##");
		System.out.println("Education Condition: "+vo.getJob_education());
		
		List<RecruitVO> jobEducationList = recruitService.searchEducationList(vo);
		System.out.println(jobEducationList.size());
		
		HashMap<String, List<RecruitVO>> map = new HashMap<String, List<RecruitVO>>();
		map.put("jobEducationList", jobEducationList);
		
		return map;
	}
	
	//selectbox에서 포지션 카테고리 값을 선택 시 선택한 값에 해당하는 공고 리스트 출력
	@RequestMapping("searchPositionList.do")
	@ResponseBody
	public HashMap<String, List<RecruitVO>> searchPositionList(RecruitVO vo) {
		System.out.println("## ajax - searchPositionList.do - controller ##");
		System.out.println("Position Condition: "+vo.getJob_position());
		
		List<RecruitVO> jobPositionList = recruitService.searchPositionList(vo);
		System.out.println(jobPositionList.size());
		
		HashMap<String, List<RecruitVO>> map = new HashMap<String, List<RecruitVO>>();
		map.put("jobPositionList", jobPositionList);
		
		return map;
	}
	
	//selectbox에서 고용형태 카테고리 값을 선택 시 선택한 값에 해당하는 공고 리스트 출력
	@RequestMapping("searchHireList.do")
	@ResponseBody
	public HashMap<String, List<RecruitVO>> searchHireList(RecruitVO vo) {
		System.out.println("## ajax - searchHireList.do - controller ##");
		System.out.println("HireType Condition: "+vo.getHire_type());
		
		List<RecruitVO> jobHireList = recruitService.searchHireList(vo);
		System.out.println(jobHireList.size());
		
		HashMap<String, List<RecruitVO>> map = new HashMap<String, List<RecruitVO>>();
		map.put("jobHireList", jobHireList);
		
		return map;
	}
	
	//selectbox에서 경력사항 카테고리 값을 선택 시 선택한 값에 해당하는 공고 리스트 출력
	@RequestMapping("searchCareerList.do")
	@ResponseBody
	public HashMap<String, List<RecruitVO>> searchCareerList(RecruitVO vo) {
		System.out.println("## ajax - searchCareerList.do - controller ##");
		System.out.println("Career Condition: "+vo.getJob_experience());
		
		List<RecruitVO> jobCareerList = recruitService.searchCareerList(vo);
		System.out.println(jobCareerList.size());
		
		HashMap<String, List<RecruitVO>> map = new HashMap<String, List<RecruitVO>>();
		map.put("jobCareerList", jobCareerList);
		
		return map;
	}
	
	//selectbox에서 위치 카테고리 값을 선택 시 선택한 값에 해당하는 공고 리스트 출력
	@RequestMapping("searchExtraAddrList.do")
	@ResponseBody
	public HashMap<String, List<RecruitVO>> searchExtraAddrList(RecruitVO vo) {
		System.out.println("## ajax - searchExtraAddrList.do - controller ##");
		System.out.println("company address Condition: "+vo.getCompany_extra());
		
		List<RecruitVO> companyExtraList = recruitService.searchExtraAddrList(vo);
		System.out.println(companyExtraList.size());
		
		HashMap<String, List<RecruitVO>> map = new HashMap<String, List<RecruitVO>>();
		map.put("companyExtraList", companyExtraList);
		
		return map;
	}

}
