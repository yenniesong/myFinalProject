package com.human.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.domain.BootcampVO;
import com.human.java.domain.MemberVO;

@Repository("bootcampDAO")
public class BootcampDAOImpl implements BootcampDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public BootcampVO idCheck(BootcampVO vo) {
		System.out.println("==> idCheck DAO 도착");
		
		return mybatis.selectOne("BootcampDAO.idCheck", vo);
	}

	@Override
	public int bootcampInsert(BootcampVO vo) {
		System.out.println("==> DAO 도착");
		
		return mybatis.insert("BootcampDAO.bootcampInsert", vo);
	}

	@Override
	public BootcampVO bootcampLogin(BootcampVO vo) {
		System.out.println("==> bootcampLogin DAO 도착");
		
		return mybatis.selectOne("BootcampDAO.idCheck", vo);
	}

	@Override
	public List<BootcampVO> bootcampList() {
		return mybatis.selectList("BootcampDAO.bootcampList");
	}


}
