package com.itwillbs.clever.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AuctionController {
	
	//메인 -> 경매페이지 포워딩
	@RequestMapping(value = "auction.ao", method = {RequestMethod.GET, RequestMethod.POST})
	public String auction() {
		return "auction/auction";
	} 
}
