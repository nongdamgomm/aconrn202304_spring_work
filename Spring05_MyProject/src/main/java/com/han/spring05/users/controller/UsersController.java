package com.han.spring05.users.controller;

import java.net.URLEncoder;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.han.spring05.users.dto.UsersDto;
import com.han.spring05.users.service.UsersService;

@Controller
public class UsersController {
	
	@Autowired
	private UsersService service;
	
	@RequestMapping(method = RequestMethod.GET, value = "/users/signup_form")
	public String signupForm() {
		return "users/signup_form";
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/users/loginform")
	public String loginForm() {
		return "users/loginform";
	}
	
	@RequestMapping("/users/info")
	public ModelAndView info(HttpSession session, ModelAndView mView) {
		service.getInfo(session, mView);
		mView.setViewName("users/info");
		return mView;
	}

	@RequestMapping(method = RequestMethod.POST, value = "/users/signup")
	public ModelAndView signup(ModelAndView mView, UsersDto dto) {
		service.addUser(dto);
		mView.setViewName("users/signup");
		return mView;
	}
	@RequestMapping("/users/login")
	public ModelAndView login(ModelAndView mView, UsersDto dto, String url, HttpSession session) {
		service.loginProcess(dto, session);
		String encodedUrl=URLEncoder.encode(url);
		mView.addObject("url", url);
		mView.addObject("encodedUrl", encodedUrl);
		mView.setViewName("/users/login");
		return mView;
	}	
	
	@RequestMapping("/users/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("id");
		return "users/logout";
	}

}
