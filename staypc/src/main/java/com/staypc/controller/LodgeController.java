package com.staypc.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.staypc.vo.LodgeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.staypc.service.LodgeService;
import com.staypc.utility.BoardPager;
import com.staypc.vo.LodgeVO;


@Controller
public class LodgeController {

	@Autowired
	LodgeService Service;
	

	@RequestMapping("/main.do")
	public ModelAndView main(ModelAndView mav) throws Exception{
		List<LodgeVO> list = Service.listMain();
		Map<String, List> map = new HashMap<String, List>();
		map.put("list", list);
		mav.addObject("map", map);
		mav.setViewName("home/main");
		return mav;
	}
	
	@RequestMapping("lodge/list.do")
	public ModelAndView list(@RequestParam(defaultValue="") String num,
							 @RequestParam(defaultValue="") String keyword,
							 @RequestParam(defaultValue="1") int curPage, 
							 @RequestParam(defaultValue="") String sdate, 
							 @RequestParam(defaultValue="") String edate,
							 ModelAndView mav) throws Exception{
		System.out.println("시작과 끝날:"+sdate+"+"+edate);
		System.out.println("결과값:"+ num+"/"+keyword+"/"+sdate+"/"+edate);
		// 레코드 객수 계산
		int count = Service.countArticle(num, keyword, sdate, edate);
		
		// 페이지 나누기 처리
		BoardPager boardPager = new BoardPager(count, curPage);
		int start = boardPager.getPageBegin();
		int end = boardPager.getPageEnd();

		List<LodgeVO> list = Service.listAll(start, end, num, keyword, sdate, edate);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("count", count);
		map.put("num", num);
		map.put("keyword", keyword);
		map.put("boardPager", boardPager);
		map.put("sdate", sdate);
		map.put("edate", edate);

		mav.addObject("map", map);
		mav.setViewName("lodge/list");
		
		return mav;
	}

	@RequestMapping(value="lodge/read.do", method=RequestMethod.GET)
	public ModelAndView read(@RequestParam int lodge_Code, ModelAndView mav) throws Exception{
		
		LodgeVO vo = Service.read(lodge_Code);
		mav.addObject("vo", vo);

		List listImg =  Service.readImg(lodge_Code);
		mav.addObject("listImg", listImg);

		mav.setViewName("lodge/houseread");
		return mav;
	}	

}








