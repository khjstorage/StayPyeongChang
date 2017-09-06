package com.staypc.controller;
import com.staypc.service.LodgeService;
import com.staypc.service.LoginService;
import com.staypc.utility.FileRename;
import com.staypc.utility.MailUtility;
import com.staypc.utility.Utility;
import com.staypc.vo.LodgeVO;
import com.staypc.vo.LoginVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;

@Controller
public class LodgeController {

	@Autowired
	private LodgeService service;

	
	
	@RequestMapping(value = "kkj_test/main.do", method = RequestMethod.GET)
	public String registerHoteForml(){
		return "kkj_test/main";
	}
	
		
	
	//임시로 제작했기에 수정 필요
	@RequestMapping(value = "kkj_test/main.do", method = RequestMethod.POST)
	public String registerHotelProc(ModelAndView mav, LodgeVO vo, HttpServletRequest request) throws IOException {
		System.out.println(">>>");
		service.insert(vo);
		System.out.println("<<<");
		return "redirect:/";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}










