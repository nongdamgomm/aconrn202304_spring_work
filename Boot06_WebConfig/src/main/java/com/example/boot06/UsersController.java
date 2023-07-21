package com.example.boot06;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UsersController {
	@GetMapping("/users/loginform")
	public String loginform() {
		return "users/loginform";
	}
	
	@PostMapping("/users/login")
	public String login(HttpSession session, String id) {
		//가상의 로그인 처리를 한다
		//session.invalidate(); //초기화 후에 세션에 정보를 담을 수 있다.
		session.setAttribute("id", id);
		return "redirect:/";
	}
	
	@GetMapping("/users/logout")
	public String login(HttpSession session) {
		//로그아웃 처리
		session.invalidate();
		return "redirect:/";
	}
	
	@GetMapping("/users/info")
	public String info(Model model) {
		//DB 에서 읽어온 개인정보라고 가정
		String address = "서울시 강남구 삼원빌딩";
		model.addAttribute("address", address);
		return "users/info";
	}
}
