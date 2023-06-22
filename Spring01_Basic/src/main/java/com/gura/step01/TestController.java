package com.gura.step01;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gura.step01.member.MemberDto;


/*
 *  JSON 문자열 응답하는 방법
 *  
 *   1. pom.xml에 jac
 */


@Controller
public class TestController {
	
	//문자열을 응답하기 위한 annotation = @ResponseBody
	@ResponseBody
	@RequestMapping ("/test/json1")
	public String json1() {
		return "{\"num\" : 1 ,\"name\" : \"김구라\", \"addr\" : \"노량진\"}";
	}
	
	@ResponseBody
	@RequestMapping("/test/json2")
	public MemberDto json2() {
		//DB에서 읽어온 화원정보라고 가정하자
		MemberDto dto = new MemberDto();
		dto.setNum(2);
		dto.setName("해골");
		dto.setAddr("원숭이");
		
		return dto;
	}
	
	@ResponseBody
	@RequestMapping("/test/json3")
	public Map<String, Object> json3(){
		Map<String, Object> map = new HashMap<>();
		map.put("num", 1);
		map.put("writer", "김구라");
		map.put("isMan", true);
		return map;
	}
	
	@ResponseBody
	@RequestMapping("/test/json4")
	public List<String> json4(){
		List<String> names = new ArrayList<String>();
		names.add("김구라");
		names.add("해골");
		names.add("원숭이");
		return names;	
	}
	
	@ResponseBody
	@RequestMapping("/test/json5")
	public List<MemberDto> json5(){
		List<MemberDto> list = new ArrayList<>();
		list.add(new MemberDto(1, "김국라", "노량진"));
		list.add(new MemberDto(2, "해골", "노량진"));
		list.add(new MemberDto(3, "원숭이", "노량진"));
		return list;
	}
	
	@ResponseBody
	@RequestMapping("/test/json6")
	public List<Map<String,Object>> json6(){
		List<Map<String,Object>> list = new ArrayList<>();
		
		Map<String, Object> map1 = new HashMap<>();
		map1.put("num", 1);
		map1.put("name", "김구라");
		map1.put("addr", "노랭진");
		
		Map<String, Object> map2 = new HashMap<>();
		map2.put("num", 2);
		map2.put("name", "해골");
		map2.put("addr", "노랭진");
		
		Map<String, Object> map3 = new HashMap<>();
		map3.put("num", 3);
		map3.put("name", "원숭이");
		map3.put("addr", "노랭진");
		
		list.add(map1);
		list.add(map2);
		list.add(map3);
		
		return list;
	}
}
