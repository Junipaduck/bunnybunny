package com.itwillbs.clever.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class AdminController {
	
	
	@GetMapping(value = "/AdminMain.ad")
	public String adminMain() {
		return "admin/admin_main";
	}
	
	// 관리자 페이지 회원 목록 임시 매핑
	@GetMapping(value = "/AdminMember.ad")
	public String adminMember() {
		return "admin/admin_member";
	}
	
}



















































