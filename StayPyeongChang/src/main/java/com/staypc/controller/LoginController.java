package com.staypc.controller;


import com.staypc.service.LoginService;
import com.staypc.utility.FileRename;
import com.staypc.utility.MailUtility;
import com.staypc.utility.Utility;
import com.staypc.vo.LoginVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;

@Controller
public class LoginController {

	@Autowired
	private LoginService service;

	@Autowired
	private MailUtility mailUtility;

	/********************
	 *     회원가입     *
	 ********************/
	@RequestMapping(value = "join/joinMembership.do", method = RequestMethod.GET)
	public String joinMembershipForm(){
		return "join/joinMembership";
	}

	@RequestMapping("join/duplicateId.do")
	public @ResponseBody String duplicate_id(@RequestParam String id){
		return service.duplicate_id(id);
	}

	@RequestMapping("join/duplicateEmail.do")
	public @ResponseBody String duplicate_email(@RequestParam String email){
		System.out.println(email);
		return service.duplicate_email(email);
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
			vo.setPicture("");
		}
		service.insert(vo);
		mailUtility.joinMail(vo.getEmail());
		mav.addObject("id", vo.getId());
		mav.setViewName("join/message");
		return mav;
	}

	@RequestMapping(value = "join/welcome.do")
	public String welcome(LoginVO vo){
		service.mailAuth(vo);
		return "join/welcome";
	}

	/*****************************
	 *         메일보내기        *
	 *****************************/
	@RequestMapping(value = "join/mail.do")
	public String joinMail(LoginVO vo){
		mailUtility.joinMail(vo.getEmail());
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
		LoginVO member = service.findUser(vo.getEmail());
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
				mailUtility.accountMail(member.getId(), temporaryPassword, member.getEmail());
				vo.setPassword(temporaryPassword);
				service.changePassword(vo);
				mav.addObject("email", vo.getEmail());
				mav.setViewName("member/message");
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
		boolean loginresult = service.loginCheck(vo, session);
		if (loginresult == true) {
			mav.setViewName("login/session");
			mav.addObject("msg", "success");
		} else {
			mav.setViewName("login/login");
			mav.addObject("msg", "failure");
		}
		return mav;
	}
	@RequestMapping("login/logout.do")
	public String logout(HttpSession session) {
		service.logout(session);
		return "redirect:/";
	}

}
