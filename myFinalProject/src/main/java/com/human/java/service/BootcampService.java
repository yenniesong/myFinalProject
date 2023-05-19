package com.human.java.service;

import java.util.HashMap;
import java.util.List;

import com.human.java.domain.BootcampVO;
import com.human.java.domain.MemberVO;

public interface BootcampService {


	public BootcampVO idCheck_Login(BootcampVO vo);
	
	public int bootcampInsert(BootcampVO vo );
	
	public List<BootcampVO> bootcampInfo();
	
}
