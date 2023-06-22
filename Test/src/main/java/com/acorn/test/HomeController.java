package com.acorn.test;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String home(HttpServletRequest request) {
		List<String> list = new ArrayList<String>();
		list.add("1번 공지사항");
		list.add("2번 공지사항");
		list.add("3번 공지사항");
		request.setAttribute("list", list);
		return "home";
	}
	
	@RequestMapping("/person/today")
    public String showPerson(HttpServletRequest request) {
        String person="세종대왕";
       
        request.setAttribute( "personToday" , person);
       
        return "person";
    }
}
	

