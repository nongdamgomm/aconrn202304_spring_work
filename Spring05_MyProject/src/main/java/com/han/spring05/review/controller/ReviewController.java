package com.han.spring05.review.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.han.spring05.review.dto.ReviewDto;
import com.han.spring05.review.service.ReviewService;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService service;
	
	@RequestMapping("/review/list")
	public String list(HttpServletRequest request) {
		service.getList(request);
		return "review/list";
	}
	
	@RequestMapping("/review/insertform")
	public String insertform() {
		return "review/insertform";
	}
	
	@RequestMapping("/review/insert")
	public String insert(ReviewDto dto,HttpSession session) {
		String writer= (String)session.getAttribute("id");
		dto.setWriter(writer);
		service.saveContent(dto);
		return "review/insert";
	}
}
