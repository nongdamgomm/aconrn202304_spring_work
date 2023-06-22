package com.gura.spring02.guest.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gura.spring02.guest.dto.GuestDto;

//component scan
//@Repository라는 anotation(주석)이 없으면 bean 불가능 
//직접 만드는 클래스가 아닌것들은 bean 설정을 통해 bean을 만들고 직접 정의 가능한 클래스는 anotation을 통해서  만들어낸다 
@Repository
public class GuestDaoImpl implements GuestDao{

	//mybatis 기반으로 DB연동을 하기위한 핵심 의존객체를 Dependency Inection 받는다
	//servlet-context.xml에 있는 SqlSession 객체가 Autowired 자동 주입 된다  
	//@Autowired는 따로 만들어줄 필요없이 자동으로 생성이 된다 
	//run타임 시점에 자동으로 session 클래스를 생성 .. 
	
	@Autowired
	private SqlSession session;
	
	@Override
	public void insert(GuestDto dto) {
		/*
		 *  < GuestMapper.xml 연관성 >
		 *  
		 *  Mapper's namespace => guest
		 *  sql's id => insert
		 *  parameterType => GuestDto
		 *  
		 */
		session.insert("guest.insert", dto);
		
	}

	@Override
	public void update(GuestDto dto) {
		session.update("guest.update", dto);
		
	}

	@Override
	public void delete(GuestDto dto) {
		session.delete("guest.delete", dto);
		
	}

	@Override
	public GuestDto getData(int num) {
		GuestDto dto=session.selectOne("guest.getData", num);
	      
	      return dto;
	}

	@Override
	public List<GuestDto> getList() {
		/*
		 *  < GuestMapper.xml 연관성 >
		 *  
		 *  Mapper's namespace => guest
		 *  sql's id => getList
		 *  parameterType => x
		 *  resultType => GuestDto
		 *  
		 */
		List<GuestDto> list = session.selectList("guest.getList");
		return list;
	}

}
