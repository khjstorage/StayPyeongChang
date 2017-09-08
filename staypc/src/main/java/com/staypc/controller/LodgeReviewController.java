package com.staypc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.staypc.service.LodgeReviewService;
import com.staypc.vo.LodgeReviewVO;

@Controller
public class LodgeReviewController {
	@Autowired
	LodgeReviewService Service;
	
	@RequestMapping(value="read.do", method=RequestMethod.POST)
	public ModelAndView read(@RequestParam int  review_num, HttpSession session, HttpServletRequest request) throws Exception{
		
		LodgeReviewVO vo = Service.read(review_num);
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo", vo);
		mav.setViewName("lodge/houseread");
		
		return mav;
	}	
	
	
	public String insert(@ModelAttribute LodgeReviewVO vo, HttpSession session) throws Exception{
		
		LodgeReviewVO vo=Service.insert(vo);
		
	}
	
	public String delete(@RequestParam int review_num )throws Exception{
		Service.delete(review_num);
	}
}
