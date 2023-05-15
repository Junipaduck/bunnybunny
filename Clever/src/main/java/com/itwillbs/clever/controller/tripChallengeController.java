package com.itwillbs.clever.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class tripChallengeController {
	
	//소비분석 -> 상품가입추천 -> 광고제휴(여행챌린지) 신청양식페이지로 포워딩 (신청상태 N인 멤버전용)
	@RequestMapping(value = "tripChallengeform.to", method = {RequestMethod.GET, RequestMethod.POST}) 
	public String tripChallengeForm() {
		return "tripChallenge/trip_challenge_form";
	}
	
	//소비분석 -> 상품가입추천 -> 광고제휴(여행챌린지) 페이지로 포워딩 (신청상태 Y인 멤버전용)
	@RequestMapping(value = "tripChallengeView.to", method = {RequestMethod.GET, RequestMethod.POST}) 
	public String tripChallengeView() {
		return "tripChallenge/trip_challenge_view";
	}

}
