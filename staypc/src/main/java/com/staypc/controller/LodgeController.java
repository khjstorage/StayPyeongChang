package com.staypc.controller;

import com.staypc.service.LodgeReviewService;
import com.staypc.service.LodgeService;
import com.staypc.service.LoginService;
import com.staypc.utility.BoardPager;
import com.staypc.vo.LodgeReviewVO;
import com.staypc.vo.LodgeVO;
import com.staypc.vo.LoginVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
public class LodgeController {

	@Autowired
	LodgeService lodgeService;
	
	@Autowired
	LoginService loginService;
	
	@Autowired
	LodgeReviewService reviewService;
	
	

	@RequestMapping("/main.do")
	public ModelAndView main(ModelAndView mav) throws Exception{
		List<LodgeVO> list = lodgeService.listMain();
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
		// 레코드 객수 계산
		int count = lodgeService.countArticle(num, keyword, sdate, edate);
		// 페이지 나누기 처리
		BoardPager boardPager = new BoardPager(count, curPage);
		int start = boardPager.getPageBegin();
		int end = boardPager.getPageEnd();
		List<LodgeVO> list = lodgeService.listAll(start, end, num, keyword, sdate, edate);
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
    public ModelAndView ReviewList(@RequestParam(value="pg", defaultValue = "1") int pg,
								   ModelAndView mav, LodgeReviewVO var,
								   HttpServletRequest request,
								   @RequestParam int lodge_Code, HttpSession session) throws Exception {

		//리뷰 가져오기
		int pgSize = 10;
		LodgeReviewVO lodge_code = new LodgeReviewVO();
		lodge_code.setLodge_Code(""+lodge_Code);
		int total = reviewService.getTotalCount(lodge_code);
		if (request.getParameter("pg") != null) {
			pg = Integer.parseInt(request.getParameter("pg"));
		}
		int begin = (pg * pgSize) - (pgSize - 1);
		int end = (pg * pgSize);
		HashMap<String, String> param = new HashMap<String, String>();
		param.put("p_first", "" + begin);
		param.put("p_last", "" + end);
		List<LodgeReviewVO> list = reviewService.reviewList(param);
		int allPage = (int) Math.ceil(total / (double) pgSize);
		int block = 10;
		int beginPage = ((pg - 1) / block * block) + 1;
		int endPage = ((pg - 1) / block * block) + block;
		if (endPage > allPage) {
			endPage = allPage;
		}
		request.setAttribute("rew", list);
		request.setAttribute("pg", pg);
		request.setAttribute("block", block);
		request.setAttribute("beginPage", beginPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("allPage", allPage);
		
		
		for(int i=0; i<list.size(); i++) {
			String reviewId = list.get(i).getId();
			LoginVO member = loginService.getMember(reviewId);
			mav.addObject("member",member);
		}
		
		LodgeVO host = lodgeService.read(lodge_Code);
		LoginVO host2=loginService.getMember(host.getId());
		mav.addObject("host",host2);
		
	
		//호스팅 글
		LodgeVO vo2 = lodgeService.read(lodge_Code);
		mav.addObject("vo", vo2);

		
		//호스팅 이미지
		List listImg = lodgeService.readImg(lodge_Code);
		mav.addObject("listImg", listImg);

		mav.setViewName("lodge/houseread");
		return mav;
    }

}




