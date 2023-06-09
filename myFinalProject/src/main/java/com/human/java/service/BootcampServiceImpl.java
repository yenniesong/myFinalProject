package com.human.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.BootcampDAO;
import com.human.java.domain.BootcampVO;

@Service("bootcampService")
public class BootcampServiceImpl implements BootcampService {

	@Autowired
	private BootcampDAO bootcampDAO;
	
	@Override
	public BootcampVO idCheck_Login(BootcampVO vo) {
		System.out.println("로긴하러가는 중  in Service");
		return bootcampDAO.idCheck(vo);
	}

	@Override
	public int bootcampInsert(BootcampVO vo) {
		return bootcampDAO.bootcampInsert(vo);
	}

	@Override
	public List<BootcampVO> bootcampList() {
		return bootcampDAO.bootcampList();
	}

	@Override
	public BootcampVO bootcampInfo(String userId) {
		return bootcampDAO.bootcampInfo(userId);
	}


}
