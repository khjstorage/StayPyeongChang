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
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
public class LodgeController {

	@Autowired
	LodgeService lodgeService;
	
	@Autowired
	LodgeReviewService reviewService;
	
	@Autowired
	private LoginService loginService;

	
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
    public String ReviewList(@RequestParam(value="pg", defaultValue = "1") int pg, HttpServletRequest request, @RequestParam int lodge_Code) throws Exception {

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

		LodgeVO vo2 = lodgeService.read(lodge_Code);
		List listImg =  lodgeService.readImg(lodge_Code);
		request.setAttribute("vo", vo2);
		request.setAttribute("listImg", listImg);
		return  "lodge/houseread";
    }
	
	//위시리스트 1. 위시리스트 추가
	@RequestMapping("lodge/insertWishList.do")
	public ModelAndView insertWish(ModelAndView mav, LodgeVO param, HttpSession session) throws Exception {
		String id=(String)session.getAttribute("userId");
		LodgeVO vo2 = lodgeService.read(param.getLodge_Code());
		param.setId(id);
		param.setTitle(vo2.getTitle());
		lodgeService.insertWish(param);
		System.out.println(param);	
		
		mav.setViewName("redirect:wishList.do");
		return mav;
	}
	
	  // 2. 위시리스트 삭제
	@RequestMapping("lodge/deleteWishList.do")
	public String  deleteWish(LodgeVO param, HttpSession session) throws Exception {
		param.setId((String)session.getAttribute("userId"));
		lodgeService.deleteWish(param);
		//return "member/profile";	
		return "redirect:/lodge/wishList.do";
	}
	
	  // 3. 위시리스트 확인(위시리스트로 가기) 이거 다시 봐야 함
	@RequestMapping("lodge/wishList.do")
	public ModelAndView listWish(LodgeVO param, HttpSession session, ModelAndView mav, @RequestParam int lodge_Code) throws Exception{
		//세션값 받아와서 userId저장
		param.setId((String)session.getAttribute("userId"));
		
		//1.lodge_code 넘김 : houseread 하기위해서
		mav.addObject("lodge_Code", lodge_Code);
		
		
		//2.내정보 보기 위해서 
		LoginVO member = loginService.getMember((String)session.getAttribute("userId"));
		mav.addObject("member",member);
		
		//3.위시리스트 목록 보기 위해서		
		List<LodgeVO> list=lodgeService.listWish(param);
		mav.addObject("list",list);
		
		
		System.out.println(">>"+list);		
		mav.setViewName("member/profile");
	  return mav;
	}	
}




