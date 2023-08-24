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
	
	@ResponseBody
	@RequestMapping("insertScrap.do")
	public int insertScrap(ScrapVO vo, HttpSession session, HttpServletResponse response) {
		System.out.println("## insertScrap.do - Controller ##");
		System.out.println("scrap id:"+vo.getScrap_id());
		System.out.println("user id:"+vo.getUserId());
		System.out.println("user name:"+vo.getName());
		System.out.println("company id:"+vo.getCompany_id());
		System.out.println("company name:"+vo.getCompany_name());
		System.out.println("ad id:"+vo.getAd_id());
		System.out.println("ad title:"+vo.getAd_title());
		System.out.println("scrap date:"+vo.getScrap_date());
		
		int insertResult = scrapService.insertScrap(vo);
		return insertResult;
	}
	
	@RequestMapping("deleteScrap.do")
	public String deleteScrap(ScrapVO vo) {
		System.out.println("## deleteScrap.do - controller ##");
		System.out.println("##scrap id: "+vo.getScrap_id());
		scrapService.deleteScrap(vo);
		return "redirect:/scrap/getScrapList.do";
	}
	

}
