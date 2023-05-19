package com.human.java.dao;

import java.util.List;

import com.human.java.domain.BootcampVO;


public interface BootcampDAO {
	
	/**
	 * id 중복체트 기능 구현
	 */	
	BootcampVO idCheck(BootcampVO vo); 
	
	/**
	 * 회원가입기능 구현
	 */
	int bootcampInsert(BootcampVO vo);
	
	/**
	 * 로그인 확인 기능 구현
	 */
	BootcampVO bootcampLogin(BootcampVO vo);
	
	public List<BootcampVO> bootcampInfo();
}
