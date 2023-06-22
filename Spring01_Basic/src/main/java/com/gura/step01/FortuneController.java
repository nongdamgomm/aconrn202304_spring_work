package com.gura.step01;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FortuneController {
	@RequestMapping("/fortune")
	public String fortune(HttpServletRequest request) {
		//오늘의 운세
		String fortune="오늘 운세는 최고네요";
		
		//request scope에 응답에  필요한 데이터를 담는다
		request.setAttribute("fortuneToday",fortune);
		
		// /WEB-INF/views/fortune.jsp 페이지로 forward 이동해서 응답하기
		return "fortune";
	}
	
	@RequestMapping("/fortune2")
	public ModelAndView fortune2() {
		//오늘의 운세
		String fortuneToday="오늘 운세는 보통이네요";
		
		//HttpServletRequest 객체 대신에 ModelAndView 객체를 생성해서 
		ModelAndView mView =new ModelAndView();
		//view page에 전달할 내용을 담는다
		mView.addObject("fortuneToday", fortuneToday);
		//view page 의 위치도 담는다
		mView.setViewName("fortune");
		//모델과 view page의 정보가 모두 담겨있는 ModelAndView 객체를 리턴해주면 똑같이 동작한다
		return mView;
	}
	
	//ModelAndView 를 매개 변수로 선언하면 스프링 프레임워크가 알아서 객체 생성후 참조값을 넣어준다
	@RequestMapping("/fortune3")
	public ModelAndView fortune3(ModelAndView mView) {
		//오늘의 운세
		String fortuneToday="오늘 운세는 안좋아요";
		
		//view page에 전달할 내용을 담는다
		mView.addObject("fortuneToday", fortuneToday);
		//view page 의 위치도 담는다
		mView.setViewName("fortune");
		//모델과 view page의 정보가 모두 담겨있는 ModelAndView 객체를 리턴해주면 똑같이 동작한다
		return mView;
	}
}
