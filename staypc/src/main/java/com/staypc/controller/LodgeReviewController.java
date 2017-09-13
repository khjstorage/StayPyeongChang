//package com.staypc.controller;
//
//import java.util.HashMap;
//import java.util.List;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.ModelAndView;
//
//import com.staypc.service.LodgeReviewService;
//import com.staypc.vo.LodgeReviewVO;
//
//@Controller
//public class LodgeReviewController {
//	@Autowired
//	LodgeReviewService Service;
//
//	@RequestMapping(value="lodge/read.do", method=RequestMethod.GET)
//	public ModelAndView read(LodgeReviewVO vo, HttpSession session, HttpServletRequest request) throws Exception{

//		

//
//		Service.updateHit(vo);

//		LodgeReviewVO lodgeReviewVO = Service.read(vo);
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("vo", vo);
//		mav.setViewName("lodge/houseread");
//
//		return mav;
//	}
//
//	@RequestMapping(value="lodge/boardList.do", method=RequestMethod.GET)
//    public String ReviewList(LodgeReviewVO vo, Model model,
//    		@RequestParam(value="pg", defaultValue = "1") int pg,
//    		HttpServletRequest request) throws Exception {
//		int pgSize = 15; //
//		int total = Service.getTotalCount();
//
//		if (request.getParameter("pg") != null)
//			pg = Integer.parseInt(request.getParameter("pg"));
//
//		int begin = (pg * pgSize) - (pgSize - 1); // (2 * 15) - (15 - 1) = 30 -
//													// 14 = 16
//		int end = (pg * pgSize); // (2 * 15) = 30
//
//		System.out.println(begin+":"+end);
//
//		HashMap<String, String> param = new HashMap<String, String>();
//		param.put("p_first", "" + begin);
//		param.put("p_last", "" + end);
//
//		List<LodgeReviewVO> list = Service.reviewList(vo);
//
//		int allPage = (int) Math.ceil(total / (double) pgSize); //
//		int block = 10; //
//
//		int beginPage = ((pg - 1) / block * block) + 1; //
//		int endPage = ((pg - 1) / block * block) + block; //
//
//		if (endPage > allPage)
//			endPage = allPage;
//
//		request.setAttribute("list", list);
//		request.setAttribute("pg", pg);
//		request.setAttribute("block", block);
//		request.setAttribute("beginPage", beginPage);
//		request.setAttribute("endPage", endPage);
//		request.setAttribute("allPage", allPage);
//
//        return  "redirect:reviewList.do";
//    }
//
//	@RequestMapping(value="lodge/reviewInsert.do", method=RequestMethod.POST)
//	public String insert( LodgeReviewVO vo, HttpSession session) throws Exception{
//
//	     Service.insert(vo);
//	     return  "redirect:reviewList.do";
//
//	}
//
//	@RequestMapping(value="lodge/reply.do", method=RequestMethod.POST)
//	public String insertReply( LodgeReviewVO vo, Model model) throws Exception {
//		int isort = vo.getSort();
//		int itab = vo.getTab();
//
//		Service.updateReplySort(vo);
//
//		vo.setSort(++isort);
//		vo.setTab(++itab);
//
//		int res = Service.insertReply(vo);
//
//		 return "redirect:list.do";
//	}
//
//	@RequestMapping(value="lodge/update.do", method=RequestMethod.POST)
//	public String update( LodgeReviewVO vo, HttpSession session) throws Exception{
//		   Service.update(vo);
//	     return "redirect:reviewList.do";
//
//	}
//
//	@RequestMapping(value="lodge/reviewDeleteAll.do", method=RequestMethod.POST)
//	public String delete( LodgeReviewVO vo, Model model )throws Exception{
//		int iSort = vo.getSort();
//		int res = 0;
//
//		if(iSort>0) {
//			res = Service.delete(vo);
//		}else
//		{
//			vo.setParent(vo.getReview_num());
//			res = Service.deleteAll(vo);
//		}
//
//		return  "redirect:list.do";
//	}
//
//	@RequestMapping("lodge/deleteform.do")
//	public String deletePage(Model model) {
//		return "lodge/delete";
//	}
//
//
//	@RequestMapping(value="lodge/reviewWriteform.do", method=RequestMethod.POST)
//	public String writePage(Model model, HttpServletRequest request) throws Exception{
//		return "redirect:writeform.do";
//	}
//
//	@RequestMapping(value="lodge/reviewInsertReplyform.do", method=RequestMethod.POST)
//	public String replyPage(LodgeReviewVO vo, Model model) throws Exception {
//		model.addAttribute("board", Service.read(vo));
//
//		return "redirect:reviewInsertReply";
//	}
//
//	@RequestMapping(value="lodge/reviewUpdateform.do", method=RequestMethod.POST)
//	public String updatePage(LodgeReviewVO vo, Model model) throws Exception {
//
//		LodgeReviewVO lodgeReviewVO = Service.read(vo);
//
//		model.addAttribute("board", lodgeReviewVO);
//		return "redirect:reviewUpdate";
//	}
//
//
//}
