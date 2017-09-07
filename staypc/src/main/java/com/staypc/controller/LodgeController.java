package com.staypc.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	

	@RequestMapping("/")
	public ModelAndView main() throws Exception{
		List<LodgeVO> list = Service.listMain();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);

		ModelAndView mav = new ModelAndView();
		mav.addObject("map", map);
		mav.setViewName("home/main");
		
		System.out.println("홈");
		return mav;
	}
	
	@RequestMapping("lodge/list.do")
	public ModelAndView list(@RequestParam(defaultValue="") String num,
							 @RequestParam(defaultValue="") String keyword,
							 @RequestParam(defaultValue="1") int curPage, 
							 @RequestParam(defaultValue="") String sdate, 
							 @RequestParam(defaultValue="") String edate) throws Exception{
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
		
		System.out.println("list값"+list);
		map.put("list", list);
		map.put("count", count);
		map.put("num", num);
		map.put("keyword", keyword);
		map.put("boardPager", boardPager);
		map.put("sdate", sdate);
		map.put("edate", edate);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("map", map);
		mav.setViewName("lodge/list");
		
		return mav;
	}
	
	@RequestMapping("lodge/write.do")
	public ModelAndView write(HttpSession session, HttpServletRequest request) throws Exception{

		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("lodge/write");
		
		return mav;
	}
	
	@RequestMapping(value="insert.do", method=RequestMethod.POST)
	public String insert(@ModelAttribute LodgeVO vo, HttpSession session) throws Exception{
		
		
		Service.insert(vo);
		
		return "redirect:list.do";
	}

	//추가 시작 
	@RequestMapping(value="read.do", method=RequestMethod.GET)
	public ModelAndView read(@RequestParam int lno, HttpSession session, HttpServletRequest request) throws Exception{
		
		LodgeVO vo = Service.read(lno);
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo", vo);
		mav.setViewName("lodge/houseread");
		
		return mav;
	}	
	//추가 끝
}








