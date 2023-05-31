package com.human.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.MemberDAO_yennie;
import com.human.java.domain.MemberVO;

@Service("memberService")
public class Y_MemberServiceImpl implements Y_MemberService {

	@Autowired
	private MemberDAO_yennie memberDAO;
	
	@Override
	public MemberVO idCheck_Login(MemberVO vo) {
		System.out.println("로긴하러가는 중  in Service");
		return memberDAO.idCheck(vo);
	}

	@Override
	public int userInsert(MemberVO vo) {
		return memberDAO.memberInsert(vo);
	}

	@Override
	public List<MemberVO> memberInfo() {
		return memberDAO.memberInfo();
	}

}
