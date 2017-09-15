package com.staypc.controller;

import com.staypc.service.NoticeService;
import com.staypc.vo.NoticeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class NoticeController {

	@Autowired
	NoticeService noticeService;
	@RequestMapping("notice_list.do")
	public String notice_list(HttpServletRequest req) {
		req.setAttribute("notice_list",noticeService.notice_list());
		return "notice/notice_list";
	}
	
	@RequestMapping("notice/notice_view.do")
	public String notice_view(NoticeVO vo,/*httpServletRequest�� jsp�� ������ �����Ҷ�*/HttpServletRequest req) {
		System.out.println("notice_view");
		req.setAttribute("notice_view", noticeService.notice_view(vo));
		return "notice/notice_view";
	}
	
	@RequestMapping("notice/notice_update.do")
	public String notice_update(NoticeVO vo) {
		System.out.println("notice_update");
		noticeService.notice_update(vo);
		return "notice/notice_list";
	}
	
	@RequestMapping("notice/notice_delete.do")
	public String notice_delete(NoticeVO vo) {
		System.out.println("notice_delete");
		noticeService.notice_delete(vo);
		return "notice/notice_list";
	}
	
	@RequestMapping("notice/notice_insert_form.do")
	public String notice_insert_form() {
		System.out.println("notice_insert_form");
		return "notice/notice_insert";
	}
	
	@RequestMapping("notice/notice_insert.do")
	public String notice_insert(NoticeVO vo) {
		System.out.println("notice_insert");
		vo.setId("admin");
		noticeService.notice_insert(vo);
		return "redirect:notice_list.do";
	}
}
