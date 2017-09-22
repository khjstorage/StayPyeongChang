package com.staypc.controller;

import com.staypc.service.LodgeReviewService;
import com.staypc.service.LodgeService;
import com.staypc.utility.BoardPager;
import com.staypc.vo.LodgeReviewVO;
import com.staypc.vo.LodgeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;


@Controller
public class LodgeController {

	@Autowired
	LodgeService Service;
	@Autowired
	LodgeReviewService reviewService;

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

/*	@RequestMapping(value="lodge/read.do", method=RequestMethod.GET)
	public ModelAndView read(@RequestParam int lodge_Code, ModelAndView mav) throws Exception{
		
		LodgeVO vo = Service.read(lodge_Code);
		mav.addObject("vo", vo);

		List listImg =  Service.readImg(lodge_Code);
		mav.addObject("listImg", listImg);

		mav.setViewName("redirect:houseread.do");
		return mav;
	}	
*/
	
	@RequestMapping(value="lodge/read.do", method=RequestMethod.GET)
    public String ReviewList(LodgeReviewVO vo, Model model,
    		@RequestParam(value="pg", defaultValue = "1") int pg,
    		HttpServletRequest request,@RequestParam int lodge_Code) throws Exception {
		
		
		int pgSize = 10; //
		LodgeReviewVO lodge_code = new LodgeReviewVO();
		lodge_code.setLodge_Code(""+lodge_Code);
		int total = reviewService.getTotalCount(lodge_code);

		if (request.getParameter("pg") != null)
			pg = Integer.parseInt(request.getParameter("pg"));

		int begin = (pg * pgSize) - (pgSize - 1); // (2 * 15) - (15 - 1) = 30 -
													// 14 = 16
		int end = (pg * pgSize); // (2 * 15) = 30

		System.out.println(begin+":"+end);

		HashMap<String, String> param = new HashMap<String, String>();
		param.put("p_first", "" + begin);
		param.put("p_last", "" + end);

		List<LodgeReviewVO> list = reviewService.reviewList(param);

		int allPage = (int) Math.ceil(total / (double) pgSize); //
		int block = 10; //

		int beginPage = ((pg - 1) / block * block) + 1; //
		int endPage = ((pg - 1) / block * block) + block; //

		if (endPage > allPage)
			endPage = allPage;

		request.setAttribute("rew", list);
		request.setAttribute("pg", pg);
		request.setAttribute("block", block);
		request.setAttribute("beginPage", beginPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("allPage", allPage);
		
				
		LodgeVO vo2 = Service.read(lodge_Code);
		List listImg =  Service.readImg(lodge_Code);
		request.setAttribute("vo", vo2);
		request.setAttribute("listImg", listImg);
		return  "lodge/houseread";
    }
}








