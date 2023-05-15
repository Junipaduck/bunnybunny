package com.itwillbs.clever.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CardController {

	@GetMapping("/cardUsage.ca")
	public String cardUsage() {
		return "card/cardUsage";
	}
	
	@GetMapping("/cardUsageDetail.ca")
	public String cardUsageDetail() {
		return "card/cardUsage_detail";
	}
	
	@GetMapping("/budget.ca")
	public String budget() {
		return "boa/budget";
	}
}
