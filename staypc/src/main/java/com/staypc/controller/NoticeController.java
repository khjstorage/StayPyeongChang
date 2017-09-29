package com.staypc.controller;

import com.staypc.service.NoticeService;
import com.staypc.utility.Notice_Pager;
import com.staypc.vo.NoticeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class NoticeController {

	@Autowired
	NoticeService noticeService;
	
	@RequestMapping("notice/notice_list.do")
	public ModelAndView notice_list(@RequestParam(defaultValue="1") int curPage, ModelAndView mav) {
		Notice_Pager np = new Notice_Pager(noticeService.notice_cnt(), curPage);		
		NoticeVO vo = new NoticeVO();
		vo.setBegin(np.getPageBegin());
		vo.setEnd(np.getPageEnd());
		List<NoticeVO> list = noticeService.notice_list(vo);
		System.out.println(np.toString());
		mav.addObject("np",np);
		mav.addObject("list",list);		
		mav.setViewName("notice/notice_list");
		return mav;
	}
	
	@RequestMapping("notice/notice_view.do")
	public ModelAndView notice_view(NoticeVO vo, ModelAndView mav) {
		mav.addObject("object", noticeService.notice_view(vo));
		System.out.println(noticeService.notice_view(vo));
		mav.setViewName("notice/notice_view");
		return mav;
	}
	
	@RequestMapping("notice/notice_update.do")
	public String notice_update(NoticeVO vo) {
		noticeService.notice_update(vo);
		return "redirect:/notice/notice_list.do";
	}
	
	@RequestMapping("notice/notice_delete.do")
	public String notice_delete(NoticeVO vo) {
		noticeService.notice_delete(vo);
		return "redirect:/notice/notice_list.do";
	}
	
	@RequestMapping("notice/notice_insert_form.do")
	public String notice_insert_form() {
		return "notice/notice_insert";
	}
	
	@RequestMapping("notice/notice_insert.do")
	public String notice_insert(NoticeVO vo, HttpSession session) {
		vo.setId((String) session.getAttribute("userId"));
		noticeService.notice_insert(vo);
		return "redirect:/notice/notice_list.do";
	}
	

	
}
































