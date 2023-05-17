package com.itwillbs.clever.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyPageController {
	
	//메인 -> 마이페이지 폼 포워딩
	@RequestMapping(value = "myPage.me", method = {RequestMethod.GET, RequestMethod.POST})
	public String myPage() {
		return "myPage/my_page";
	} 
}
