package com.human.java.dao;

//import java.util.HashMap;
//import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.domain.BootcampVO;
import com.human.java.domain.CompanyInfoVO;
import com.human.java.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession sql;

	// 일반회원 회원가입
	@Override
	public void insertmember(MemberVO membervo) throws Exception {
		sql.insert("member.insertmember", membervo);
		// mappers에 namespace를 입력하고 . 거기에 해당하는 아이디를 부르는 것
	}

	// 학원회원 회원가입
	@Override
	public void insertBootcamp(BootcampVO bootcampvo) throws Exception {
		sql.insert("member.insertBootcamp", bootcampvo);

	}

	// 기업회원 회원가입
	@Override
	public void insertCompanyInfo(CompanyInfoVO companyvo) throws Exception {
		sql.insert("companyInfo.insertCompanyInfo", companyvo);

	}

	// 로그인
	@Override
	public MemberVO memberlogin(MemberVO memberVO) throws Exception {
		return sql.selectOne("member.memberlogin", memberVO);
	}

	// 아이디 중복확인 보내기
	@Override
	public int idCheck(String userId) throws Exception {
		return sql.selectOne("member.idCheck", userId);
	}

	// 일반회원 마이페이지
	public MemberVO getMemberByUserId(String userId) throws Exception {
		return sql.selectOne("member.selectMember", userId);
	}

	// 학원회원 마이페이지
	@Override
	public BootcampVO getBootcampByUserId(String userId) throws Exception {
		return sql.selectOne("bootcamp.selectBootcamp", userId);
	}

	// 기업회원 마이페이지
	@Override
	public CompanyInfoVO getCompanyByUserId(String userId) throws Exception {
		return sql.selectOne("companyInfo.selectCompany", userId);
	}

	// 일반회원정보수정
	@Override
	public int updatemember(MemberVO member) throws Exception {
		return sql.update("member.membermodify", member);
	}

	// 학원회원정보수정
	@Override
	public int updatebootcamp(BootcampVO bootcamp) throws Exception {
		return sql.update("bootcamp.bootcampmodify", bootcamp);
	}

	// 기업회원정보수정
	@Override
	public int updatecompany(CompanyInfoVO company_info) throws Exception {
		return sql.update("companyInfo.companymodify", company_info);
	}

	// 멤버 아이디 찾기
	@Override
	public MemberVO memberIdSearch(MemberVO memberVO) throws Exception {
		System.out.println("dao. 아이디 찾으러간다");
		return sql.selectOne("member.memberIdSearch", memberVO);

	}

	// 학원 아이디 찾기
	@Override
	public BootcampVO bootcampIdSearch(BootcampVO bootcampVO) throws Exception {
		System.out.println("dao. 아이디 찾으러간다");
		return sql.selectOne("bootcamp.bootcampIdSearch", bootcampVO);
	}

	// 기업 아이디 찾기
	@Override
	public CompanyInfoVO companyIdSearch(CompanyInfoVO companyVO) throws Exception {
		System.out.println("dao. 아이디 찾으러간다");
		return sql.selectOne("companyInfo.companyIdSearch", companyVO);
	}

	// 멤버 비밀번호 찾기
	@Override
	public MemberVO memberPwCheck(MemberVO memberVO) throws Exception {
		return sql.selectOne("member.memberPwCheck", memberVO);
	}

	// 학원 비밀번호 찾기
	@Override
	public BootcampVO bootcampPwCheck(BootcampVO bootcampVO) throws Exception {
		return sql.selectOne("bootcamp.bootcampPwCheck", bootcampVO);
	}

	// 기업 비밀번호 찾기
	@Override
	public CompanyInfoVO companyPwCheck(CompanyInfoVO companyVO) throws Exception {
		return sql.selectOne("companyInfo.companyPwCheck", companyVO);
	}

	// 멤버 비밀번호 찾고 새비밀번호
	@Override
	public void memberPwUpdate(MemberVO memberVO) throws Exception {
		sql.update("member.memberPwUpdate", memberVO);

	}

	// 학원 비밀번호 찾고 새비밀번호
	@Override
	public void bootcampPwUpdate(BootcampVO bootcampVO) throws Exception {
		sql.update("bootcamp.bootcampPwUpdate", bootcampVO);

	}

	// 기업 비밀번호 찾고 새비밀번호
	@Override
	public void companyPwUpdate(CompanyInfoVO companyVO) throws Exception {
		sql.update("companyInfo.companyPwUpdate", companyVO);

	}

	// 멤버 회원탈퇴
	@Override
	public void memberDelete(MemberVO memberVO) throws Exception {
		sql.delete("member.memberDelete", memberVO);

	}

	// 학원 회원탈퇴
	@Override
	public void bootcampDelete(BootcampVO bootcampVO) throws Exception {
		sql.delete("bootcamp.bootcampDelete", bootcampVO);

	}

	// 기업 회원탈퇴
	@Override
	public void companyDelete(CompanyInfoVO companyVO) throws Exception {
		sql.delete("companyInfo.companyDelete", companyVO);

	}
	
	// 일반 회원 비밀번호 메일인증 
	@Override
	public MemberVO memberfindByEmail(String email) throws Exception {
		 return sql.selectOne("member.findByEmail", email);
	}

	// 학원 회원 비밀번호 메일인증 
	@Override
	public BootcampVO bootcampfindByEmail(String email) throws Exception {
		 return sql.selectOne("bootcamp.findByEmail", email);
	}

	// 기업 회원 비밀번호 메일인증 
	@Override
	public CompanyInfoVO companyfindByEmail(String email) throws Exception {
		 return sql.selectOne("companyInfo.findByEmail", email);
	}

}