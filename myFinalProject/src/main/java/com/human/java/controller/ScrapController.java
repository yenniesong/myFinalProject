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

import com.human.java.domain.PagingVO;
import com.human.java.domain.QnAVO;
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
	public String getScrapList(Model model, PagingVO pVO, HttpSession session) {
		System.out.println("## getScrapList.do 진입 - controller ##");
		// 서비스에서 하면 return이 하나만 되고 게시글에 대한 정보만 리턴! 
		// 게시글에 대한 정보와 총 페이지수에 대한 정보는 섞이기 어려운 정보
		// => 별도의 서비스를 진행하는 게 더 좋음
		System.out.println("시작 그룹번호 : " + pVO.getGroupNum() );
		System.out.println("시작 페이지번호 : " + pVO.getPageNum() );
		
		pVO.setUserId((String)session.getAttribute("userId"));
		
		System.out.println("pVO.setUserId((String)session.getAttribute 값 : " + pVO.getUserId());
		// 총 페이지에 대한 개념
		PagingVO pInfoVo = scrapService.getScrapListCount(pVO.getGroupNum(), pVO.getUserId());	// 얘는 조회만 하면 되서 넘겨주는게 없음
		
		// pVo : startPageNum / endPage 
		List<ScrapVO> ScrapList = scrapService.getScrapList(pVO);
		
		model.addAttribute("scrapList", ScrapList);
		model.addAttribute("pInfoVo", pInfoVo);
		System.out.println("ScrapList : " + ScrapList);
		System.out.println("pInfoVo : " + pInfoVo);
		return "/scrap/scrapList";
	}
	
	@ResponseBody
	@RequestMapping("insertScrap.do")
	public ScrapVO insertScrap(ScrapVO vo, HttpSession session, HttpServletResponse response) {
		System.out.println("## insertScrap.do - Controller ##");
		System.out.println("scrap id:"+vo.getScrap_id());
		System.out.println("user id:"+vo.getUserId());
		System.out.println("user name:"+vo.getName());
		System.out.println("company id:"+vo.getCompany_id());
		System.out.println("company name:"+vo.getCompany_name());
		System.out.println("ad id:"+vo.getAd_id());
		System.out.println("ad title:"+vo.getAd_title());
		System.out.println("scrap date:"+vo.getScrap_date());
		
		ScrapVO insertResult = scrapService.chkScrap(vo.getUserId(),vo.getAd_id());
		
		if (insertResult == null) {
			scrapService.insertScrap(vo);
		}
		else if (insertResult != null) {
			scrapService.deleteScrap(vo);
			System.out.println("지웠나요:" + vo);
		}
		return insertResult;
	}
	
	@RequestMapping("deleteScrap.do")
	public String deleteScrap(ScrapVO vo) {
		System.out.println("## deleteScrap.do - controller ##");
		System.out.println("##scrap id: "+vo.getScrap_id());
		scrapService.deleteScrap(vo);
		return "redirect:/scrap/scrapList?userId=${userId}";
		
	}
	

}
