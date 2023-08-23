package com.human.java.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.human.java.domain.ScrapVO;
import com.human.java.service.ScrapService;

@Controller
@RequestMapping("/scrap/")
public class ScrapController {
	
	@Autowired
	private ScrapService scrapService;
	
	@RequestMapping("{url}.do")
	public String viewPage(@PathVariable String url) {
		System.out.println("## Scrap Controller 진입 ##"+url);
		return "/scrap/"+url;
	}
	
	@RequestMapping("getScrapList.do")
	public String getScrap(Model model, ScrapVO vo, HttpSession session) {
		System.out.println("## getScrapList.do 진입 - controller ##");
		List<ScrapVO> sList = scrapService.getScrapList(vo);
		model.addAttribute("sList",sList);
		return "/scrap/scrapList";
	}
	

}
