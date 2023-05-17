package com.itwillbs.clever.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NoticeController {
	
	//공지사항 리스트 폼 포워딩
	@RequestMapping(value = "noticeList.no", method = {RequestMethod.GET, RequestMethod.POST})
	public String noticeList() {
		return "notice/notice_list";
	} 
	
	//공지사항 상세페이지 폼 포워딩
	@RequestMapping(value = "noticeView.no", method = {RequestMethod.GET, RequestMethod.POST})
	public String noticeView() {
		return "notice/notice_view";
	} 
	
	// 메인 -> 챗봇페이지로 포워딩
	@RequestMapping(value = "chatbot.co", method = {RequestMethod.GET, RequestMethod.POST})
	public String chatbot() {
		return "notice/chatbot";
	} 
}
