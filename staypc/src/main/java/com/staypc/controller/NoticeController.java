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
	//~~~.do �� ȣ���ϴ� �̸��� ������
	@RequestMapping("notice_list.do")
	public String notice_list(HttpServletRequest req) {
		//���⼭���� �۾��ϰ�
		List<NoticeVO> list =  noticeService.notice_list();
		System.out.println(list.size());
		req.setAttribute("notice_list",list);
		//���� �������� ��
		return "notice/notice_list";
	}
	
	@RequestMapping("notice_view.do")
	public String notice_view(NoticeVO vo,/*httpServletRequest�� jsp�� ������ �����Ҷ�*/HttpServletRequest req) {
		req.setAttribute("notice_view", noticeService.notice_view(vo));
		return "notice/notice_view";
	}
	
	@RequestMapping("notice_update.do")
	public String notice_update(NoticeVO vo) {
		noticeService.notice_update(vo);
		return "notice/notice_list";
	}
	
	@RequestMapping("notice_delete")
	public String notice_delete(NoticeVO vo) {
		noticeService.notice_delete(vo);
		return "notice/notice_list";
	}
	
	@RequestMapping("notice_insert_form.do")
	public String notice_insert_form() {
		return "notice/notice_insert_form";
	}
	
	@RequestMapping("notice_insert.do")
	public String notice_insert(NoticeVO vo) {
		noticeService.notice_insert(vo);
		return "notice/notice_list";
	}
}
