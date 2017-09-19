package com.staypc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.staypc.service.AdminService;
import com.staypc.utility.Admin_Pager;
import com.staypc.vo.LodgeVO;

@Controller
public class AdminController {
	
	@Autowired
	AdminService adminService;

	//로그인
	@RequestMapping("admin/login.do")
	public String login() {
		 System.out.println("admincontroller//login.do");
		 return "admin/login";
	}
	
	@RequestMapping("admin/login_check.do")
	public String login_check(@RequestParam String pwd) {
		System.out.println("admincontroller//login_check.do");
		System.out.println(pwd);
		String password="1234";
		if(pwd.equals(password)) {
			
			return "redirect:hosting.do";
		}else {
			return "admin/login";
		}
	}
	
	@RequestMapping("admin/hosting.do")
	public String hosting(@RequestParam(defaultValue="1") int curPage, HttpServletRequest req) {
		Admin_Pager ap = new Admin_Pager(adminService.lodge_cnt(),curPage);
		LodgeVO vo = new LodgeVO();
		vo.setBegin(ap.getPageBegin());
		vo.setEnd(ap.getPageEnd());
		List<LodgeVO> hosting_list = adminService.lodge_list(vo);
		req.setAttribute("hosting_list", hosting_list);
		req.setAttribute("ap", ap);
		return "admin/hosting";
	}
	
	@RequestMapping("admin/hosting_view.do")
	public String hosting_view(@RequestParam String room_Name) {
		return "";
	}
}
