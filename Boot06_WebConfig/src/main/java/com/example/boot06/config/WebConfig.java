package com.example.boot06.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.example.boot06.interceptor.LoginInterceptor;

@Configuration
public class WebConfig implements WebMvcConfigurer{
	
	//LoginInterceptor DI
	@Autowired LoginInterceptor loginInter;
	
	//Interceptor 를 추가할 때 오버라이드 하는 메소드
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(loginInter)
			.addPathPatterns("/users/*")
			.excludePathPatterns("/users/loginform")
			.excludePathPatterns("/users/login");
	}
	
	// webapp/resources 폴더 설정
		@Override
		public void addResourceHandlers(ResourceHandlerRegistry registry) {
			registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
		}
}
