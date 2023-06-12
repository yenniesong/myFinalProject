package com.human.java.service;

import java.util.List;

import com.human.java.domain.BootcampVO;

public interface BootcampService {


	public BootcampVO idCheck_Login(BootcampVO vo);
	
	public int bootcampInsert(BootcampVO vo );
	
	public List<BootcampVO> bootcampInfo();

	
}
