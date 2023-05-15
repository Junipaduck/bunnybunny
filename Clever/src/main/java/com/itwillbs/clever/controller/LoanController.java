package com.itwillbs.clever.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoanController {
	
	//대출 전체 내역 조회
	@RequestMapping(value = "loan.oa", method = {RequestMethod.GET, RequestMethod.POST})
	public String loan() {
		return "loan/loan";
	}
	
	//대출 전체 내역 조회
	@RequestMapping(value = "loanDetail.oa", method = {RequestMethod.GET, RequestMethod.POST})
	public String loanDetail() {
		return "loan/loan_detail";
	}
	
}
