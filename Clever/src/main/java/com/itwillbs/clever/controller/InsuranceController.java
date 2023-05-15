package com.itwillbs.clever.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class InsuranceController {
	
	//보험조회페이지 포워딩
	@RequestMapping(value = "insurance.io", method = {RequestMethod.GET, RequestMethod.POST})
	public String insurance() {
		return "insurance/insurance";
	}
	
	//보험상세조회페이지 포워딩
	@RequestMapping(value = "insuranceDetail.io", method = {RequestMethod.GET, RequestMethod.POST})
	public String insuranceDetail() {
		return "insurance/insurance_detail";
	}
}
