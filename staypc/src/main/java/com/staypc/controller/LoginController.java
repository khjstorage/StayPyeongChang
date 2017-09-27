package com.staypc.controller;

import com.staypc.service.Impl.WishServiceImpl;
import com.staypc.service.LodgeService;
import com.staypc.service.LoginService;
import com.staypc.service.WishService;
import com.staypc.utility.FileRename;
import com.staypc.utility.MailUtils;
import com.staypc.utility.Utility;
import com.staypc.vo.LodgeVO;
import com.staypc.vo.LoginVO;
import com.staypc.vo.WishVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class LoginController {



	@Autowired
	private LoginService loginService;

	@Autowired
	private WishService wishService;

	@Autowired
	private MailUtils mailUtils;

	/********************
	 *     회원가입     *
	 ********************/
	@RequestMapping(value = "join/joinMembership.do", method = RequestMethod.GET)
	public String joinMembershipForm(){
		return "join/register";
	}

	@RequestMapping("join/duplicateId.do")
	public @ResponseBody String duplicate_id(@RequestParam String id){
		return loginService.duplicate_id(id);
	}

	@RequestMapping("join/duplicateEmail.do")
	public @ResponseBody String duplicate_email(@RequestParam String email){
		return loginService.duplicate_email(email);
	}

	@RequestMapping(value = "join/joinMembership.do", method = RequestMethod.POST)
	public ModelAndView joinMembership(ModelAndView mav, LoginVO vo, HttpServletRequest request) throws IOException {
		MultipartFile multipartFile = vo.getUploadFile();
		if(!multipartFile.isEmpty()){
			String fileNmae = multipartFile.getOriginalFilename();
			String realPath = request.getServletContext().getRealPath("/resources/profile_photo/");
			File file = new File(realPath, fileNmae);
			FileRename rename = new FileRename();
			rename.renameFile(file);
			vo.setPicture(rename.getRenameFile());
			multipartFile.transferTo(new File(realPath+rename.getRenameFile()));
		}else{
			vo.setPicture("basic_profile.jpg");
		}
		loginService.insert(vo);
		mailUtils.joinMail(vo.getEmail());
		mav.addObject("id", vo.getId());
		mav.setViewName("join/join_message");
		return mav;
	}

	@RequestMapping(value = "join/welcome.do")
	public String welcome(LoginVO vo){
		loginService.mailAuth(vo);
		return "join/welcome";
	}

	/*****************************
	 *         메일보내기        *
	 *****************************/
	//승인메일 다시 보낼때
	@RequestMapping(value = "join/mail.do")
	public String joinMail(LoginVO vo){
		mailUtils.joinMail(vo.getEmail());
		return "redirect:/";
	}


	/*****************************
	 *     아이디/비밀번호찾기   *
	 *****************************/
	@RequestMapping(value = "member/find.do")
	public String find(){
		return "member/find";
	}

	@RequestMapping(value = "member/find.do", method = RequestMethod.POST)
	public ModelAndView find(ModelAndView mav, LoginVO vo){
		LoginVO member = loginService.findUser(vo.getEmail());
		if(member==null){
			mav.addObject("msg","nonexistent");
			mav.setViewName("member/find");
		}else{
			if(member.getVerify_email()=='N'){
				mav.addObject("email", vo.getEmail());
				mav.addObject("msg", "nonVerify_email");
				mav.setViewName("member/find");
			}else {
				String temporaryPassword = Utility.temporaryPassword(8);
				mailUtils.accountMail(member.getId(), temporaryPassword, member.getEmail());
				vo.setPassword(temporaryPassword);
				loginService.changePassword(vo);
				mav.addObject("email", vo.getEmail());
				mav.setViewName("member/member_message");
			}
		}
		return mav;
	}



	/*****************************
	 *      로그인/로그아웃      *
	 *****************************/
	@RequestMapping(value = "login/login.do", method = RequestMethod.GET)
	public String loginForm() {
		return "login/login";
	}

	@RequestMapping(value = "login/login.do", method = RequestMethod.POST)
	public ModelAndView login(ModelAndView mav, LoginVO vo, HttpSession session){
		boolean loginresult = loginService.loginCheck(vo, session);
		
		if (loginresult == true) {
			mav.setViewName("redirect:/main.do");
		} else {
			mav.setViewName("login/login");
			mav.addObject("msg", "failure");
		}
		return mav;
	}

	@RequestMapping("login/logout.do")
	public String logout(HttpSession session) {
		loginService.logout(session);
		return "redirect:/";
	}


	/*****************************
	 *     회원정보수정/탈퇴     *
	 *****************************/
	@RequestMapping(value = "/member/modify.do", method = RequestMethod.GET)
	public ModelAndView modifyForm(ModelAndView mv, HttpSession session){
		LoginVO member = loginService.getMember((String)session.getAttribute("userId"));

		mv.addObject("member",member);
		mv.setViewName("member/modify");
		return mv;
	}

	@RequestMapping(value = "/member/modify.do",method = RequestMethod.POST)
	public String modify(LoginVO vo, HttpSession session, HttpServletRequest request, @RequestParam String originFile) throws IOException {
		System.out.println(vo);
		MultipartFile multipartFile = vo.getUploadFile();
		if(!multipartFile.isEmpty()){
			String fileNmae = multipartFile.getOriginalFilename();
			String realPath = request.getServletContext().getRealPath("/resources/profile_photo/");
			File file = new File(realPath, fileNmae);
			FileRename rename = new FileRename();
			rename.renameFile(file);
			vo.setPicture(rename.getRenameFile());
			multipartFile.transferTo(new File(realPath+rename.getRenameFile()));
		}else{
			vo.setPicture(originFile);
		}
		vo.setId((String)session.getAttribute("userId"));
		loginService.modify(vo);
		return "redirect:/";
	}


	/*****************************
	 *          프로필           *
	 *****************************/
	@RequestMapping(value = "/member/profile.do", method = RequestMethod.GET)
	public ModelAndView profile(WishVO vo, ModelAndView mv, HttpSession session) throws Exception{
		vo.setId((String)session.getAttribute("userId"));
		
		List<WishVO> list= wishService.listWish(vo);
		mv.addObject("list",list);

		LoginVO member = loginService.getMember((String)session.getAttribute("userId"));			
		mv.addObject("member",member);

		mv.setViewName("member/profile");
		return mv;
	}

	@RequestMapping(value = "/member/drop.do", method = RequestMethod.GET)
	public String dropForm(LoginVO vo, HttpSession session, HttpServletRequest request){
		return "member/drop";
	}


	@RequestMapping(value = "/member/dropcheck.do")
	public @ResponseBody LoginVO dropcheck(LoginVO vo, HttpSession session){
		vo.setId((String)session.getAttribute("userId"));
		LoginVO member = loginService.viewMember(vo);
		return member;
	}

	@RequestMapping(value = "/member/dropProc.do", method = RequestMethod.POST)
	public String dropProc(LoginVO vo, HttpSession session){
		vo.setId((String)session.getAttribute("userId"));
		loginService.drop(vo);
		loginService.logout(session);
		return "redirect:/";
	}


}
