package com.human.java.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.java.domain.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl_yennie implements MemberDAO_yennie {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public MemberVO idCheck(MemberVO vo) {
		System.out.println("==> idCheck DAO 도착");
		
		return mybatis.selectOne("MemberDAO.idCheck", vo);
	}

	@Override
	public int memberInsert(MemberVO vo) {
		System.out.println("==> DAO 도착");
		
		return mybatis.insert("MemberDAO.userInsert", vo);
	}

	@Override
	public MemberVO memberLogin(MemberVO vo) {
		System.out.println("==> memberLogin DAO 도착");
		
		return mybatis.selectOne("MemberDAO.idCheck", vo);
	}

	@Override
	public List<MemberVO> memberInfo() {
		return mybatis.selectList("MemberDAO.userInfo");
	}

}
