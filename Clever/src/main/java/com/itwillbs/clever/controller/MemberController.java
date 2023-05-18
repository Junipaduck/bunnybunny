package com.itwillbs.clever.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.clever.service.MemberService;
import com.itwillbs.clever.vo.MemberVO;



@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	
	//로그인 폼 포워딩
	@RequestMapping(value = "login.me", method = {RequestMethod.GET, RequestMethod.POST})
	public String login() {
		return "member/member_login_form";
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
	
	
	
	// ==================================== 팀 주제바뀜 =============================================
	
	
	
	// 로그인
	@PostMapping(value = "loginPro.me")
	public String LoginPro(MemberVO member, HttpSession session, Model model) {
		
		System.out.println("아이디 : " + member.getMember_id() + ", 패스워드 : " + member.getMember_passwd());
		
			boolean loginSuccess = memberService.loginSuccess(member);
			if(loginSuccess) {
				//로그인 성공 시 세션 객체에 아이디 저장 
				session.setAttribute("sId", member.getMember_id());
				return "redirect:/"; // 로그인 성공 시 -> main 페이지로 리다이렉트 이동 
			} else {
				model.addAttribute("msg","아이디 혹은 패스워드가 일치하지 않습니다.");
				return "fail_back";
			}	
		
	}
	
	// 로그아웃 
	@GetMapping(value = "logout.me")
	public String logout(HttpSession session) {
		session.invalidate(); // 세션 초기화 
		return "redirect:/"; // 로그아웃 후 메인화면으로 리다이렉트 이동 
	}

	
} // 컨트롤러 끝
















