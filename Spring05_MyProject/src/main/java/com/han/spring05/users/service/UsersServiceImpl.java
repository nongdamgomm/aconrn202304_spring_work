package com.han.spring05.users.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.han.spring05.users.dao.UsersDao;
import com.han.spring05.users.dto.UsersDto;

@Service
public class UsersServiceImpl implements UsersService{

	@Autowired
	private UsersDao dao;
	
	@Override
	public void addUser(UsersDto dto) {
			BCryptPasswordEncoder encoder=new BCryptPasswordEncoder();
			String encodedPwd=encoder.encode(dto.getPwd());
			dto.setPwd(encodedPwd);
			dao.insert(dto);
	}

	@Override
	public void loginProcess(UsersDto dto, HttpSession session) {
		boolean isValid=false;
		UsersDto resultDto=dao.getData(dto.getId());
		if(resultDto != null) {
			isValid = BCrypt.checkpw(dto.getPwd(), resultDto.getPwd());
		}
		if(isValid) {
			session.setAttribute("id", resultDto.getId());
		}	
	}

	@Override
	public void getInfo(HttpSession session, ModelAndView mView) {
		String id=(String)session.getAttribute("id");
		UsersDto dto=dao.getData(id);
		mView.addObject("dto", dto);
		
	}

	@Override
	public void updateUserPwd(HttpSession session, UsersDto dto, ModelAndView mView) {

		
	}

	@Override
	public Map<String, Object> saveProfileImage(HttpServletRequest request, MultipartFile mFile) {

		return null;
	}

	@Override
	public void updateUser(UsersDto dto, HttpSession session) {

		
	}

	@Override
	public void deleteUser(HttpSession session, ModelAndView mView) {

		
	}

}
