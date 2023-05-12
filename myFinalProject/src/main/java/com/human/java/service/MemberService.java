package com.human.java.service;

import java.util.HashMap;
import java.util.List;

import com.human.java.domain.MemberVO;

public interface MemberService {


	public MemberVO idCheck_Login( MemberVO vo);
	
	public int userInsert(MemberVO vo );
	
	public List<MemberVO> memberInfo();
	
}
