package com.human.java.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.java.domain.CompanyInfoVO;
import com.human.java.service.CompanyInfoService;

@Controller
@RequestMapping("/company/")
public class CompanyInfoController {
	
	@Autowired
	private CompanyInfoService companyInfoService;
	
	@RequestMapping("{url}.do")
	public String viewPage(@PathVariable String url) {
		System.out.println("## CompanyInfo Controller "+url+" ##");
		return "/companyInfo/"+url;
	}
	
	@RequestMapping("/login.do")
	public String companyLogoin (CompanyInfoVO vo, HttpSession session) {
		System.out.println("## enter companyLogin.do - Controller ##");
		System.out.println("## id: "+vo.getUserId());
		System.out.println("## password: "+vo.getPassword());
		
		CompanyInfoVO result = companyInfoService.idcheck_Login(vo);
		
		//맞으면 성공 (객체 생성) 틀리면 실패 (null)
		if (result == null || result.getUserId() == null) {
			//result x
			return "/company/companyLogin";
		}
		else {
			System.out.println("[ "+result.getUserId()+" ] 로그인 성공");
			
			//세션에 login이름에 사용자 이름 저장
			session.setAttribute("loginFg", "c");
			session.setAttribute("userId", result.getUserId());
			session.setAttribute("company_name", result.getCompany_name());
			session.setAttribute("company_manager", result.getCompany_manager());
			session.setAttribute("company_id", result.getCompany_id());
			
			session.setAttribute("sessionTime", new Date().toLocaleString());
			
			//있을 경우 연결하는 페이지
			return "redirect:/recruit/getRecruitList.do";
		}
	}

}
