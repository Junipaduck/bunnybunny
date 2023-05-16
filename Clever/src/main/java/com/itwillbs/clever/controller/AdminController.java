package com.itwillbs.clever.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class AdminController {
	
	
	@GetMapping(value = "/AdminMain.ad")
	public String adminMain() {
		return "admin/admin_main";
	}
	
}



















































