package com.human.java.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.BootcampDAO;
import com.human.java.dao.MemberDAO;
import com.human.java.domain.BootcampVO;
import com.human.java.domain.CompanyInfoVO;
import com.human.java.domain.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO dao;
	BootcampDAO bootDAO;

	// 로그인
	@Override
	public MemberVO memberlogin(MemberVO memberVO) throws Exception {
		return dao.memberlogin(memberVO);
	}

	// 학생 회원가입
	@Override
	public void insertmember(MemberVO memberVO) throws Exception {
		dao.insertmember(memberVO);

	}

	// 학원 회원가입
	@Override
	public void insertBootcamp(BootcampVO bootcampVO) throws Exception {
		dao.insertBootcamp(bootcampVO);

	}

	// 기업 회원가입
	@Override
	public void insertCompanyInfo(CompanyInfoVO companyVO) throws Exception {
		dao.insertCompanyInfo(companyVO);
	}

	// 아이디 중복확인
	@Override
	public int idCheck(String userId) throws Exception {
		return dao.idCheck(userId);
	}

	// 마이페이지 멤버
	@Override
	public MemberVO getMemberByUserId(String userId) throws Exception {
		// 회원 아이디로 데이터베이스에서 회원 정보를 조회하는 로직을 작성합니다.
		return dao.getMemberByUserId(userId);
	}

	// 학원페이지 멤버
	@Override
	public BootcampVO getBootcampByUserId(String userId) throws Exception {
		return dao.getBootcampByUserId(userId);
	}

	// 기업페이지 멤버
	@Override
	public CompanyInfoVO getCompanyByUserId(String userId) throws Exception {
		return dao.getCompanyByUserId(userId);
	}

	
	// 일반 회원정보 수정
	@Override
	public int updatemember(MemberVO memberVO) throws Exception {
		return dao.updatemember(memberVO);
	}

	// 학원회원정보 수정
	@Override
	public int updatebootcamp(BootcampVO bootcamp) throws Exception {
		return dao.updatebootcamp(bootcamp);
	}

	// 기업 회원정보 수정
	@Override
	public int updatecompany(CompanyInfoVO companyVO) throws Exception {
		return dao.updatecompany(companyVO);
	}


	// 멤버 아이디 찾기 
	@Override
	public MemberVO memberIdSearch(MemberVO memberVO) throws Exception {
		System.out.println("아이디 찾으러간다");
		  return dao.memberIdSearch(memberVO);
	}

	// 학원 아이디 찾기
	@Override
	public BootcampVO bootcampIdSearch(BootcampVO bootcampVO) throws Exception {
		System.out.println("아이디 찾으러간다");
		  return dao.bootcampIdSearch(bootcampVO);
	}

	// 기업 아이디 찾기 
	@Override
	public CompanyInfoVO companyIdSearch(CompanyInfoVO companyVO) throws Exception {
		System.out.println("아이디 찾으러간다");
		  return dao.companyIdSearch(companyVO);
	}

	// 멤버 비밀번호 찾기 
	@Override
	public MemberVO memberPwCheck(MemberVO memberVO) throws Exception {
		return dao.memberPwCheck(memberVO);
	}

	// 학원 비밀번호 찾기
	@Override
	public BootcampVO bootcampPwCheck(BootcampVO bootcampVO) throws Exception {
		return dao.bootcampPwCheck(bootcampVO);
	}

	// 기업 비밀번호 찾기 
	@Override
	public CompanyInfoVO companyPwCheck(CompanyInfoVO companyVO) throws Exception {
		return dao.companyPwCheck(companyVO);
	}
	
	// 멤버 비밀번호 찾고 새비밀번호
	@Override
	public void memberPwUpdate(MemberVO memberVO) throws Exception {
		dao.memberPwUpdate(memberVO);
		
	}
	
	// 학원 비밀번호 찾고 새비밀번호
	@Override
	public void bootcampPwUpdate(BootcampVO bootcampVO) throws Exception {
		dao.bootcampPwUpdate(bootcampVO);
		
	}
	
	// 기업 비밀번호 찾고 새비밀번호
	@Override
	public void companyPwUpdate(CompanyInfoVO companyVO) throws Exception {
		dao.companyPwUpdate(companyVO);
		
	}

	// 멤버 회원탈퇴
	@Override
	public void memberDelete(MemberVO memberVO) throws Exception {
		dao.memberDelete(memberVO);
		
	}

	// 학원 회원탈퇴
	@Override
	public void bootcampDelete(BootcampVO bootcampVO) throws Exception {
		dao.bootcampDelete(bootcampVO);
		
	}

	// 기업 회원탈퇴
	@Override
	public void companyDelete(CompanyInfoVO companyVO) throws Exception {
		dao.companyDelete(companyVO);
		
	}

	// 일반회원 비밀번호 메일인증 
	@Override
	public MemberVO memberfindByEmail(String email) throws Exception {
		  return dao.memberfindByEmail(email);
	}

	// 학원회원 비밀번호 메일인증 
	@Override
	public BootcampVO bootcampfindByEmail(String email) throws Exception {
		  return dao.bootcampfindByEmail(email);
	}

	// 기업회원 비밀번호 메일인증 
	@Override
	public CompanyInfoVO companyfindByEmail(String email) throws Exception {
		  return dao.companyfindByEmail(email);
	}


	
}
