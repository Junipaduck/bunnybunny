package com.itwillbs.clever.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AccountController {

	@GetMapping("/accountInquiry.ac")
	public String cardUsage() {
		return "account/accountInquiry";
	}
	
	
	
	
}



