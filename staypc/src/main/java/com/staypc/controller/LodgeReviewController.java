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

	@RequestMapping(value="lodge/boardList.do", method=RequestMethod.GET)
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

		List<LodgeReviewVO> list = Service.reviewList(vo);

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

        return  "redirect:boardList.do";
    }
	
	@RequestMapping(value="lodge/insert.do", method=RequestMethod.GET)
	public String insert( LodgeReviewVO vo, HttpSession session) throws Exception{

	     Service.insert(vo);
	     return  "redirect:boardList.do";
	}
	
	

}
