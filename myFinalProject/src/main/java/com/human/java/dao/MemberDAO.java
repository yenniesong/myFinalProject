package com.human.java.dao;

//import com.human.java.domain.AdminVO;
import com.human.java.domain.BootcampVO;
import com.human.java.domain.CompanyInfoVO;
import com.human.java.domain.MemberVO;

public interface MemberDAO {

	// 일반회원가입 -- mapper에 있는 id와 같게
	public void insertmember(MemberVO membervo) throws Exception;

	// 학원회원가입 -- mapper에 있는 id와 같게
	public void insertBootcamp(BootcampVO bootcampvo) throws Exception;

	// 기업회원가입 -- mapper에 있는 id와 같게
	public void insertCompanyInfo(CompanyInfoVO companyvo) throws Exception;

	// 일반 로그인
	public MemberVO memberlogin(MemberVO memberVO) throws Exception;

	// 중복확인
	public int idCheck(String userId) throws Exception;

	// 마이페이지 멤버
	public MemberVO getMemberByUserId(String userId) throws Exception;

	// 학원페이지 멤버
	public BootcampVO getBootcampByUserId(String userId) throws Exception;

	// 기업페이지 멤버
	public CompanyInfoVO getCompanyByUserId(String userId) throws Exception;

	// 일반회원정보 수정
	public int updatemember(MemberVO member) throws Exception;

	// 학원회원정보 수정
	public int updatebootcamp(BootcampVO bootcamp) throws Exception;

	// 기업회원정보 수정
	public int updatecompany(CompanyInfoVO company_info) throws Exception;

	// 멤버 아이디 찾기
	public MemberVO memberIdSearch(MemberVO memberVO) throws Exception;

	// 학원 아이디 찾기
	public BootcampVO bootcampIdSearch(BootcampVO bootcampVO) throws Exception;

	// 기업 아이디 찾기
	public CompanyInfoVO companyIdSearch(CompanyInfoVO companyVO) throws Exception;

	// 멤버 비밀번호 찾기
	public MemberVO memberPwCheck(MemberVO memberVO) throws Exception;

	// 학원 비밀번호 찾기
	public BootcampVO bootcampPwCheck(BootcampVO bootcampVO) throws Exception;

	// 기업 비밀번호 찾기
	public CompanyInfoVO companyPwCheck(CompanyInfoVO companyVO) throws Exception;

	// 멤버 비밀번호 찾고 새비밀번호
	public void memberPwUpdate(MemberVO memberVO) throws Exception;

	// 학원 비밀번호 찾고 새비밀번호
	public void bootcampPwUpdate(BootcampVO bootcampVO) throws Exception;

	// 기업 비밀번호 찾고 새비밀번호
	public void companyPwUpdate(CompanyInfoVO companyVO) throws Exception;

	// 멤버 회원탈퇴
	public void memberDelete(MemberVO memberVO) throws Exception;

	// 학원 회원탈퇴
	public void bootcampDelete(BootcampVO bootcampVO) throws Exception;

	// 기업 회원탈퇴
	public void companyDelete(CompanyInfoVO companyVO) throws Exception;

	// 멤버 비밀번호 메일인증
	public MemberVO memberfindByEmail(String email) throws Exception;

	// 학원 비밀번호 메일인증
	public BootcampVO bootcampfindByEmail(String email) throws Exception;

	// 기업 비밀번호 메일인증
	public CompanyInfoVO companyfindByEmail(String email) throws Exception;

}