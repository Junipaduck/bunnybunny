package com.itwillbs.clever.controller;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class AdminController {
	
	
	@GetMapping(value = "/adminMain.ad")
	public String adminMain() {
		return "admin/admin_main";
	}
	
	// 상품 등록 페이지 
	@GetMapping(value = "/storeRegister.ad")
	public String storeRegister() {
		return "admin/store_register_form";
	}
	
	// 상품 등록 페이지 
	@GetMapping(value = "/storeModify.ad")
	public String storeModify() {
		return "admin/store_modify_form";
	}
	
	// 현재 판매 중인 상품 목록 조회
	@GetMapping(value = "/storeList.ad")
	public String storeList() {
		return "admin/store_list";
	}
	
	// 경매 목록 조회
	@GetMapping(value = "/adminAuction.ad")
	public String autionList() {
		return "admin/aution_list";
	}
}



















































