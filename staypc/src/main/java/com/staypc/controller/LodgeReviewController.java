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
import com.staypc.service.LoginService;
import com.staypc.vo.LodgeReviewVO;
import com.staypc.vo.LodgeVO;
import com.staypc.vo.LoginVO;

@Controller
public class LodgeReviewController {
	@Autowired
	LodgeReviewService Service;
	@Autowired
	LoginService loginService;

	@RequestMapping(value="lodge/reviewread.do", method=RequestMethod.GET)
	public ModelAndView read(LodgeReviewVO param, HttpSession session, @RequestParam int lodge_Code) throws Exception{
		String id = (String)session.getAttribute("userId");
		param.setId(id);
		
		LodgeReviewVO vo = Service.read(param);
		ModelAndView mav = new ModelAndView();

		//System.out.println(vo.getLodge_Code());
		mav.addObject("lodge_Code", lodge_Code);
		mav.addObject("rew", vo);
		System.out.println("결과값"+vo.toString());
		mav.setViewName("lodge/reviewread");
		
	
		String host=vo.getId();
		LoginVO host2=loginService.getMember(vo.getId());
		mav.addObject("host",host2);

		return mav;
	}	
	
	@RequestMapping(value="lodge/insertBoard.do", method=RequestMethod.GET)
	public ModelAndView insertForm(LodgeReviewVO param, HttpSession session, @RequestParam int lodge_Code) throws Exception{
		String id = (String)session.getAttribute("userId");
		param.setId(id);
		System.out.println(param);

		//System.out.println(param.getLodge_Code());
		LodgeReviewVO vo = Service.read(param);		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("lodge_Code", lodge_Code);
		mav.addObject("rew", vo);
		//System.out.println(vo);
		mav.setViewName("lodge/insertBoard");
		
		return mav;
		
	}	

	@RequestMapping(value="lodge/update.do", method=RequestMethod.GET)
	public  ModelAndView  updateForm(LodgeReviewVO param, HttpSession session, @RequestParam int lodge_Code) throws Exception{
		String id = (String)session.getAttribute("userId");
		param.setId(id);

		LodgeReviewVO vo = Service.read(param);	
		ModelAndView mav = new ModelAndView();
		mav.addObject("lodge_Code", lodge_Code);
		mav.addObject("rew", vo);
		System.out.println(vo);
		mav.setViewName("lodge/update");

		return mav;
	}
	

	@RequestMapping(value="lodge/update.do", method=RequestMethod.POST)
	public ModelAndView update(LodgeReviewVO param, HttpSession session, @RequestParam int lodge_Code) throws Exception{
		String id = (String)session.getAttribute("userId");
		param.setId(id);

		Service.update(param);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("lodge_Code", lodge_Code);
		
		mav.setViewName("redirect:read.do?lodge_Code="+lodge_Code);
		return mav;
		}	


	@RequestMapping(value="lodge/delete.do", method=RequestMethod.GET)
	public ModelAndView delete( LodgeReviewVO vo, @RequestParam int lodge_Code)throws Exception{
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("lodge_Code", lodge_Code);
		mav.addObject("rew", vo);
		
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
		
		mav.setViewName("redirect:read.do?lodge_Code="+vo.getLodge_Code());
		return mav;
	}


	
	@RequestMapping(value="lodge/reply.do", method=RequestMethod.GET)
	public ModelAndView replyForm(LodgeReviewVO param, HttpSession session, @RequestParam int lodge_Code) throws Exception{
		String id = (String)session.getAttribute("userId");
		param.setId(id);
		
		
		LodgeReviewVO vo = Service.read(param);	
		ModelAndView mav = new ModelAndView();
		mav.addObject("lodge_Code", lodge_Code);
		mav.addObject("rew", vo);
		System.out.println("답글"+vo);
		mav.setViewName("lodge/reply");

		return mav;
	}
	

	@RequestMapping(value="lodge/insertBoard.do", method=RequestMethod.POST)
	public ModelAndView  insert( LodgeReviewVO vo, HttpSession session) throws Exception{
	
		String id = (String)session.getAttribute("userId");
		vo.setId(id);
		System.out.println(id);
		
        Service.insert(vo);
    	ModelAndView mav = new ModelAndView();		
		System.out.println(vo);
		mav.setViewName("redirect:read.do?lodge_Code="+vo.getLodge_Code());
		
		return mav;
	}
    
	@RequestMapping(value="lodge/reply.do", method=RequestMethod.POST)
	public ModelAndView insertReply(LodgeReviewVO param, HttpSession session, @RequestParam int lodge_Code) throws Exception {
		String id = (String)session.getAttribute("userId");
		param.setId(id);
		 
		int isort = param.getSort();
		int itab = param.getTab();
		
		Service.updateReplySort(param);
		param.setSort(++isort);
		param.setTab(++itab);
		param.setLodge_Code((String.valueOf(lodge_Code)));
		System.out.println("답글쓰기"+param);
		Service.insertReply(param);
		
//		if(res==0) {
//			return "board/replyerror";
//		}else
//		{
//			return "board/replyok";
//		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("lodge_Code", lodge_Code);	
		System.out.println("insert 이후"+param);
		mav.setViewName("redirect:read.do?lodge_Code="+param.getLodge_Code());
		
		return mav;
		}
	
}
