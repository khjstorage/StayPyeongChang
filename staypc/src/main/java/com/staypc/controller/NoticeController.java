package com.staypc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.staypc.service.NoticeService;
import com.staypc.vo.NoticeVO;

@Controller
public class NoticeController {

	@Autowired
	NoticeService noticeService;
	//~~~.do 를 호출하는 이름을 적어줌
	@RequestMapping("notice_list.do")
	public String notice_list(HttpServletRequest req) {
		req.setAttribute("notice_list",noticeService.notice_list());
		return "notice/notice_list";
	}
	
	@RequestMapping("notice_view.do")
	public String notice_view(NoticeVO vo,/*httpServletRequest는 jsp로 데이터 전송할때*/HttpServletRequest req) {
		System.out.println("notice_view");
		req.setAttribute("notice_view", noticeService.notice_view(vo));
		return "notice/notice_view";
	}
	
	@RequestMapping("notice_update.do")
	public String notice_update(NoticeVO vo) {
		System.out.println("notice_update");
		noticeService.notice_update(vo);
		return "notice/notice_list";
	}
	
	@RequestMapping("notice_delete")
	public String notice_delete(NoticeVO vo) {
		System.out.println("notice_delete");
		noticeService.notice_delete(vo);
		return "notice/notice_list";
	}
	
	@RequestMapping("notice_insert_form.do")
	public String notice_insert_form() {
		System.out.println("notice_insert_form");
		return "notice/notice_insert";
	}
	
	@RequestMapping("notice_insert.do")
	public String notice_insert(NoticeVO vo) {
		System.out.println("notice_insert");
		vo.setWriter("admin");
		noticeService.notice_insert(vo);
		return "redirect:notice_list.do";
	}
}
