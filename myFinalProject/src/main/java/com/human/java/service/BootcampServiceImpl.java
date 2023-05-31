package com.human.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.dao.BootcampDAO;
import com.human.java.dao.MemberDAO_yennie;
import com.human.java.domain.BootcampVO;
import com.human.java.domain.MemberVO;

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
	public List<BootcampVO> bootcampInfo() {
		return bootcampDAO.bootcampInfo();
	}


}
