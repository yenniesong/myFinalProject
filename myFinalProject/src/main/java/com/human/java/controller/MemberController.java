package com.human.java.controller;

import java.net.URLEncoder;

import javax.inject.Inject;
//import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.java.domain.BootcampVO;
import com.human.java.domain.CompanyInfoVO;
import com.human.java.domain.MemberVO;
import com.human.java.service.BootcampService;
import com.human.java.service.CompanyInfoService;
import com.human.java.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Inject
	private MemberService service;
	@Autowired
	private BootcampService bService;
	@Autowired
	private CompanyInfoService cService;
	
	
	@RequestMapping("/{url}")
	public String viewPage(@PathVariable String url) {
	
		return url;
	}
	
	@RequestMapping("main.do")
	public String mainList() {
	
		System.out.println("메인 호출()");
	
		return "member/main";
	
	}

	// 로그인들어가기전
	@GetMapping("/login")
	public String loginform() {
		System.out.println("loginform()호출..");
		return "member/login";
	}

	@PostMapping("/login")
	public String login(MemberVO memberVO, HttpSession session, RedirectAttributes rttr) throws Exception {
		System.out.println("login()호출..");
		System.out.println("id : " + memberVO.getUserId());
		System.out.println("pwd : " + memberVO.getPassword());

		MemberVO login = service.memberlogin(memberVO);

		// 로그인을 실패 -- null
		// 로그인을 성공 -- 아이디, 구분값 
		// if 구분값이 bcm 으로 구분 

		if (login == null || StringUtils.isEmpty(memberVO.getUserId()) || StringUtils.isEmpty(memberVO.getPassword())) {
			// 로그인 실패 처리 및 아이디 또는 비밀번호가 입력되지 않은 경우 처리
			String alertScript = "<script>alert('아이디 또는 비밀번호를 다시 입력해주세요');";
			alertScript += "window.location.href='/member/login';</script>";
			return "redirect:/member/login?alertScript=" + URLEncoder.encode(alertScript, "UTF-8");

		} else {
			
			if ( login.getLoginFG().equals("m") ) {
				MemberVO getName = service.getMemberByUserId(memberVO.getUserId());
				session.setAttribute("userId", login.getUserId()); // 로그인 정보 세션에 저장
				session.setAttribute("name", getName.getName());
				session.setAttribute("loginFG", login.getLoginFG());
				session.setAttribute("academy", getName.getAcademy());
				
			} else if ( login.getLoginFG().equals("b") ) {
				BootcampVO getBName = bService.bootcampInfo(memberVO.getUserId());
				session.setAttribute("userId", login.getUserId()); // 로그인 정보 세션에 저장
				session.setAttribute("name", getBName.getBootcamp_name());
				session.setAttribute("loginFG", login.getLoginFG());
				
				session.setAttribute("bootcamp_id", getBName.getBootcamp_id());
				session.setAttribute("bootcamp_name", getBName.getBootcamp_name());
				
				
			} else if (login.getLoginFG().equals("c")) {
				session.setAttribute("userId", login.getUserId()); // 로그인 정보 세션에 저장
				
//				Company_infoVO getCName = cService.companyInfo(memberVO.getUserId());
				
				session.setAttribute("name", login.getName());
				session.setAttribute("loginFG", login.getLoginFG());

			} else if (login.getLoginFG().equals("A")) {
				session.setAttribute("userId", login.getUserId()); // 로그인 정보 세션에 저장
				session.setAttribute("name", login.getName());
				session.setAttribute("loginFG", login.getLoginFG());
				
			}
			
			
			// 로그인 완료하면 가는 경로
			return "member/main";
		}
	}

	// 일반 회원가입하기전
	@GetMapping("/join")
	public String joinform() {
		System.out.println("Joinform() 호출..");
		return "member/join";
	}

	// 일반회원 가입 완
	@PostMapping("/student")
	public String joinStudent(@ModelAttribute MemberVO memberVO) throws Exception {

		// StudentForm 데이터를 이용하여 Student 객체 생성 및 데이터 저장 로직 수행
		// StudentService를 사용하여 데이터 저장
		service.insertmember(memberVO);
		System.out.println("학생회원가입 완");
		return "redirect:/";
	}

	// 학원회원 가입 완
	@PostMapping("/bootcamp")
	public String joinBootcamp(@ModelAttribute BootcampVO bootcampVO) throws Exception {

		// BootcampForm 데이터를 이용하여 Bootcamp 객체 생성 및 데이터 저장 로직 수행
		// BootcampService를 사용하여 데이터 저장
		System.out.println("학원 회원가입 중");
		System.out.println("## 학원 아이디 : " + bootcampVO.getUserId());
		bService.bootcampInsert(bootcampVO);
		System.out.println("학원회원가입 완");
		return "redirect:/";
	}

	// 기업회원가입 완
	@PostMapping("/company")
	public String joinCompany(@ModelAttribute CompanyInfoVO companyVO) throws Exception {

		// CompanyForm 데이터를 이용하여 Company 객체 생성 및 데이터 저장 로직 수행
		// CompanyService를 사용하여 데이터 저장
		System.out.println("## 기업 회원가입 중 ##");
		System.out.println("## 기업 아이디: "+companyVO.getComapny_id());
		cService.CompanyInsert(companyVO);
		System.out.println("기업회원가입 완");
		return "redirect:/";
	}

	// 아이디 중복체크
	@ResponseBody
	@RequestMapping(value = "/idCheck", method = RequestMethod.POST)
	public int idCheck(String userId) throws Exception {
		System.out.println("아이디중복체크 들어오기");
		
		int idCheck = service.idCheck(userId);

		int result = 0;

		if (idCheck > 0) {
			result = 1;
		}

		return result;
	}

	// 일반 회원 마이페이지
	@GetMapping("MembermyPage")
	public String memberModify(Model model, HttpSession session) throws Exception {
		System.out.println("일반 정보수정 들어가요");
		String userId = (String) session.getAttribute("userId"); // id

		MemberVO member = service.getMemberByUserId(userId);

		// 데이터 베이스를 접근
		// select * from member where id = id

		// 결과 : memberVO
		model.addAttribute("member", member);

		return "member/MembermyPage";
	}

	// 회원정보 수정 post
	@PostMapping("/updatemember")
	public String membepostModify(HttpSession session, MemberVO member, Model model) throws Exception {
		System.out.println("수정했습니다.");
		System.out.println(member);
		service.updatemember(member);

		// 수정된 정보를 다시 조회하여 Model에 저장하여 뷰로 전달
		MemberVO updatemember = service.getMemberByUserId(member.getUserId());

		model.addAttribute("member", updatemember);

		/* session.invalidate(); */

		return "member/MembermyPage";
	}

	// 학원 회원 마이페이지
	@GetMapping("BootcampmyPage")
	public String bootcampModify(Model model, HttpSession session) throws Exception {
		System.out.println("학원 정보수정 들어가요");
		String userId = (String) session.getAttribute("userId"); // id
		BootcampVO bootcamp = service.getBootcampByUserId(userId);

		// 데이터베이스에서 회원 정보 조회 로직을 작성하여 BootcampVO 객체에 값을 설정합니다.
		model.addAttribute("bootcamp", bootcamp);

		System.out.println(bootcamp.getUserId());
		// 데이터 베이스를 접근
		// select * from bootcamp where id = id

		// 결과 : BootcampVO

		return "member/BootcampmyPage";
	}

	// 학원 회원정보 수정 post
	@PostMapping("/updatebootcamp")
	public String bootcamppostModify(HttpSession session, BootcampVO bootcamp, Model model) throws Exception {
		System.out.println("수정했습니다.");

		service.updatebootcamp(bootcamp);

		// 수정된 정보를 다시 조회하여 Model에 저장하여 뷰로 전달
		BootcampVO updatebootcamp = service.getBootcampByUserId(bootcamp.getUserId());

		model.addAttribute("bootcamp", updatebootcamp);

		/* session.invalidate(); */

		return "member/BootcampmyPage";
	}

	// 기업 회원 마이페이지
	@GetMapping("/CompanymyPage")
	public String companyModify(Model model, HttpSession session) throws Exception {
		System.out.println("기업 정보수정 들어가요");
		String userId = (String) session.getAttribute("userId"); // id
		CompanyInfoVO companyInfo = service.getCompanyByUserId(userId);

		// 조회된 회원 정보를 Model에 저장하여 뷰로 전달
		model.addAttribute("companyInfo", companyInfo);

		System.out.println(companyInfo.getUserId());
		// 데이터 베이스를 접근
		// select * from company_info where id = id

		// 결과 : Company_infoVO
		return "member/CompanymyPage";
	}

	// 기업정보 수정 post
	@PostMapping("/updatecompany")
	public String updateCompanyInfo(@ModelAttribute("companyInfo") CompanyInfoVO companyInfo, Model model,
			HttpSession session) throws Exception {
		// 수정된 회원 정보를 데이터베이스에 저장
		service.updatecompany(companyInfo);

		// 수정된 정보를 다시 조회하여 Model에 저장하여 뷰로 전달
		CompanyInfoVO updatedCompanyInfo = service.getCompanyByUserId(companyInfo.getUserId());

		model.addAttribute("companyInfo", updatedCompanyInfo);

		// 정보 수정한거 다시 저장
		session.setAttribute("companyInfo", updatedCompanyInfo);

		return "member/CompanymyPage";
	}

	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		System.out.println("로그아웃 실행");

		session.invalidate();

		return "redirect:/";
	}

	// 아이디 찾기 들어가기
	@RequestMapping(value = "/member/searchId", method = RequestMethod.GET)
	public String searchid(HttpServletRequest request, Model model) {
		System.out.println("아이디 찾기 들어가여,,,");
		return "/member/searchId";
	}

	// 아이디 찾기
	@PostMapping("search_result_id")
	public String search_result_id(Model model, HttpSession session, @RequestParam("name") String name,
			@RequestParam("tel") String tel) throws Exception {
		System.out.println("아이디 찾기 실행해여,,,");

		// 이름과 전화번호로 각 테이블에서 아이디를 조회
		MemberVO memberVO = new MemberVO();
		memberVO.setName(name);
		memberVO.setTel(tel);

		BootcampVO bootcampVO = new BootcampVO();
		bootcampVO.setBootcamp_manager(name);
		bootcampVO.setTel(tel);

		CompanyInfoVO company_infoVO = new CompanyInfoVO();
		company_infoVO.setCompany_manager(name);
		company_infoVO.setTel(tel);

		MemberVO memberuserId = service.memberIdSearch(memberVO);
		BootcampVO bootcampuserId = service.bootcampIdSearch(bootcampVO);
		CompanyInfoVO companyuserId = service.companyIdSearch(company_infoVO);

		// 조회한 아이디 값을 모델에 추가
		model.addAttribute("member", memberuserId);
		model.addAttribute("bootcamp", bootcampuserId);
		model.addAttribute("company", companyuserId);

		return "member/search_result_id";
	}

	
	// 비밀번호 찾기 들어가기
	@RequestMapping(value = "/member/searchPw", method = RequestMethod.GET)
	public String searchPw(HttpServletRequest request, Model model, MemberVO searchPW) {
		return "/member/searchPw";
	}

	
	// 비밀번호 찾기 실행
	@PostMapping("search_result_pw")
	public String search_result_pw(Model model, HttpSession session,
			@RequestParam("email") String email, @RequestParam("userId") String userId) throws Exception {
		
		System.out.println("비밀번호 찾기 실행해여,,,");
		System.out.println("userId : " + userId);
		System.out.println("email : " + email);

		// 이름과 전화번호로 각 테이블에서 아이디를 조회
		MemberVO memberVO = new MemberVO();
		memberVO.setUserId(userId);
		memberVO.setEmail(email);

		BootcampVO bootcampVO = new BootcampVO();
		bootcampVO.setUserId(userId);
		bootcampVO.setEmail(email);
				
		CompanyInfoVO company_infoVO = new CompanyInfoVO();
		company_infoVO.setUserId(userId);
		company_infoVO.setCompany_manager_email(email);

		MemberVO memberpw = service.memberPwCheck(memberVO);
		System.out.println("memberpw : " + memberpw);
		BootcampVO bootcamppw = service.bootcampPwCheck(bootcampVO);
		CompanyInfoVO companypw = service.companyPwCheck(company_infoVO);

		// 조회한 아이디 값을 모델에 추가
		model.addAttribute("member", memberpw);
		model.addAttribute("bootcamp", bootcamppw);
		model.addAttribute("company", companypw);

	    return "member/search_result_pw";
	}


	// 회원 탈퇴 get
	@GetMapping("/DeleteView")
	public String DeleteView() throws Exception {
		System.out.println("회원탈퇴 들어가여");
		return "member/DeleteView";
	}

	// 회원탈퇴 진행
	@PostMapping("/DeleteView2")
	public String memberdelete(HttpSession session, MemberVO memberVO, BootcampVO bootcampVO, CompanyInfoVO companyVO,
			RedirectAttributes rttr) throws Exception {

		String userId = (String) session.getAttribute("userId"); // id
		// id
		System.out.println("userId : " + memberVO.getUserId());
		// password
		System.out.println("password : " + memberVO.getPassword());
		// FG
		System.out.println("FG : " + memberVO.getLoginFG());

		if (memberVO.getLoginFG().equals("m")) {
			// 'm'에 해당하는 동작 수행
			service.memberDelete(memberVO);
			session.invalidate();
			System.out.println("멤버 하나 삭제요");

		} else if (memberVO.getLoginFG().equals("b")) {
			// 'b'에 해당하는 동작 수행
			service.bootcampDelete(bootcampVO);

			session.invalidate();
			System.out.println("학원 멤버 하나 삭제요");

		} else if (memberVO.getLoginFG().equals("c")) {
			// 'c'에 해당하는 동작 수행
			service.companyDelete(companyVO);

			session.invalidate();
			System.out.println("기업 멤버 하나 삭제요");

		} else {
			// 비밀번호가 일치하지 않는 경우
			rttr.addFlashAttribute("msg", "비밀번호가 일치하지 않습니다.");
			return "redirect:/member/DeleteView";
		}

		return "/member/login";
	}
	
	// 내가 쓴 글 
	@GetMapping("/mylist")
	public String mylist() throws Exception {
		System.out.println("내글 목록 들어가여");
		// id
		
		// service
		
		// 대상의.size()
		return "member/mylist";
	}
	

	// 내가 쓴 댓글
	@GetMapping("/myComment")
	public String myComment() throws Exception {
		System.out.println("내댓글 목록 들어가여");
		return "member/myComment";
	}
	
	
	


}