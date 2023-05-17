package com.itwillbs.clever.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StoreController {
	
	//메인 -> 스토어페이지 포워딩
	@RequestMapping(value = "store.so", method = {RequestMethod.GET, RequestMethod.POST})
	public String store() {
		return "store/store";
	} 
}
