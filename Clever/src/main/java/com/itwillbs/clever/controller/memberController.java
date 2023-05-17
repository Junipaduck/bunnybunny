package com.itwillbs.clever.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class memberController {
	
	//로그인 폼 포워딩
	@RequestMapping(value = "login.me", method = {RequestMethod.GET, RequestMethod.POST})
	public String login() {
		return "member/login";
	} 
	
	//회원가입 폼 포워딩
	@RequestMapping(value = "joinForm.me", method = {RequestMethod.GET, RequestMethod.POST})
	public String joinForm() {
		return "member/member_join_form";
	} 
	
	//가계부 폼 포워딩
	@RequestMapping(value = "accountBook.ac", method = {RequestMethod.GET, RequestMethod.POST})
	public String accountBook() {
		return "accountBook/account_book";
	} 
	
	
	// 마이페이지 - 나의 회원정보 포워딩 
	@RequestMapping(value = "memberInformation.me", method = {RequestMethod.GET, RequestMethod.POST})
	public String memberInformation() {
		return "member/member_mypage_information";
	}
	
	// 마이페이지 - 나의 회원정보 - 회원정보 수정 포워딩
	@RequestMapping(value = "memberModifyForm.me", method = {RequestMethod.GET, RequestMethod.POST})
	public String memberModifyForm() {
		return "member/member_modify_form";
	}
	
	// 마이페이지 - My 자산조회 포워딩 
	@RequestMapping(value = "memberAsset.me", method = {RequestMethod.GET, RequestMethod.POST})
	public String memberAsset() {
		return "member/member_asset";
	}
	
	// 마이페이지 - 예산설정 포워딩 
	@RequestMapping(value = "memberBudget.me", method = {RequestMethod.GET, RequestMethod.POST})
	public String memberBudget() {
		return "member/member_mypage_budget";
	}
	
	// 마이페이지 - 소비분석 포워딩 
	@RequestMapping(value = "memberConsumption.me", method = {RequestMethod.GET, RequestMethod.POST})
	public String memberConsumption() {
		return "member/member_consumption_analysis";
	}
	
	
}
