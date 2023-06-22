package com.gura.spring02.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gura.spring02.member.dto.MemberDto;

//component scan 시 bean이 되기 위해
@Repository
public class MemberDaoImpl implements MemberDao{
	
	//MyBatis 를 사용하기 위한 핵심 의존 객체 주입받기
	@Autowired
	private SqlSession session;
	
	@Override
	public void insert(MemberDto dto) {
		session.insert("member.insert", dto);
		
	}

	@Override
	public void update(MemberDto dto) {
		
		
	}

	@Override
	public void delete(int num) {
		
		
	}

	@Override
	public MemberDto getData(int num) {
		
		return null;
	}

	@Override
	public List<MemberDto> getList() {
		
		return null;
	}
	
}
