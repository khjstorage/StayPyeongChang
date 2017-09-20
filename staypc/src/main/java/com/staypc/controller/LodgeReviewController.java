package com.staypc.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

	@RequestMapping(value="lodge/houseread.do", method=RequestMethod.GET)
    public String ReviewList(LodgeReviewVO vo, Model model,
    		@RequestParam(value="pg", defaultValue = "1") int pg,
    		HttpServletRequest request) throws Exception {
		int pgSize = 15; //
		int total = Service.getTotalCount();

		if (request.getParameter("pg") != null)
			pg = Integer.parseInt(request.getParameter("pg"));

		int begin = (pg * pgSize) - (pgSize - 1); // (2 * 15) - (15 - 1) = 30 -
													// 14 = 16
		int end = (pg * pgSize); // (2 * 15) = 30

		System.out.println(begin+":"+end);

		HashMap<String, String> param = new HashMap<String, String>();
		param.put("p_first", "" + begin);
		param.put("p_last", "" + end);

		List<LodgeReviewVO> list = Service.reviewList(param);

		int allPage = (int) Math.ceil(total / (double) pgSize); //
		int block = 10; //

		int beginPage = ((pg - 1) / block * block) + 1; //
		int endPage = ((pg - 1) / block * block) + block; //

		if (endPage > allPage)
			endPage = allPage;

		request.setAttribute("list", list);
		request.setAttribute("pg", pg);
		request.setAttribute("block", block);
		request.setAttribute("beginPage", beginPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("allPage", allPage);

		return  "lodge/boardList";
    }
	
	@RequestMapping(value="lodge/reviewread.do", method=RequestMethod.GET)
	public ModelAndView read(LodgeReviewVO param, HttpSession session, HttpServletRequest request) throws Exception{
	
		LodgeReviewVO vo = Service.read(param);
		ModelAndView mav = new ModelAndView();
		//System.out.println("결과값"+vo.toString());
		mav.addObject("vo", vo);
		mav.setViewName("lodge/reviewread");

		return mav;
	}	
	
	@RequestMapping(value="lodge/insertBoard.do", method=RequestMethod.GET)
	public ModelAndView insertForm(LodgeReviewVO param, HttpSession session) throws Exception{
		String id = (String)session.getAttribute("userId");
		param.setId(id);

		//System.out.println(param.getLodge_Code());
		LodgeReviewVO vo = Service.read(param);		
		
		ModelAndView mav = new ModelAndView();		
		mav.addObject("vo", vo);
		System.out.println(vo);
		mav.setViewName("lodge/insertBoard");
		
		return mav;
		
	}
	
	@RequestMapping(value="lodge/insertBoard.do", method=RequestMethod.POST)
	public ModelAndView  insert( LodgeReviewVO vo, HttpSession session) throws Exception{
	
		String id = (String)session.getAttribute("userId");
		vo.setId(id);
		System.out.println(id);
		
        Service.insert(vo);
    	ModelAndView mav = new ModelAndView();		
		//mav.addObject("vo", vo);
		System.out.println(vo);
		mav.setViewName("lodge/houseread");
		
		return mav;
		//return "lodge/houseread";
	}
	
	
//	public String insert(BoardVO vo, Model model, HttpServletRequest request){
//		System.out.println(vo);
//		boardService.insertBoard(vo);
//		
//		return "board/writeok";
//	}
	
	@RequestMapping(value="lodge/update.do", method=RequestMethod.GET)
	public  ModelAndView  updateForm(LodgeReviewVO param) throws Exception{
		
		System.out.println(param);
		LodgeReviewVO vo = Service.read(param);
		ModelAndView mav = new ModelAndView();
		System.out.println("결과값"+vo.toString());
		mav.addObject("vo", vo);
		mav.setViewName("lodge/update");

		return mav;
	}

	@RequestMapping(value="lodge/update.do", method=RequestMethod.POST)
	public String update(LodgeReviewVO vo, HttpSession session) throws Exception{
		   Service.update(vo);
	     return "redirect:/lodge/boardList.do";

	}	
	
	@RequestMapping(value="lodge/delete.do", method=RequestMethod.GET)
	public String delete( LodgeReviewVO vo, Model model )throws Exception{
		int iSort = vo.getSort();
		int res = 0;
		System.out.println(vo.toString());
		if(iSort>0) {
			res = Service.delete(vo);
		}else
		{
			vo.setParent(vo.getReview_num());
			res = Service.deleteAll(vo);
		}

		return "redirect:/lodge/boardList.do";
	}




}
