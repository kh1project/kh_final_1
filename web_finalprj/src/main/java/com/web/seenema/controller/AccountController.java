package com.web.seenema.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/account")
public class AccountController {
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public ModelAndView reserveGet() {
		ModelAndView mv = new ModelAndView("account/join");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public ModelAndView reservePost() {
		ModelAndView mv = new ModelAndView("account/join");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginGet() {
		ModelAndView mv = new ModelAndView("account/login");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginPost() {
		ModelAndView mv = new ModelAndView("account/login");
		mv.addObject("", "");
		
		return mv;
	}
	
	/* 로그아웃 컨트롤러 */
	@RequestMapping(value = "/모르겠어유")
	public ModelAndView idontknow() {
		ModelAndView mv = new ModelAndView("account/idontknow");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/mypage")
	public ModelAndView mypage() {
		ModelAndView mv = new ModelAndView("account/mypage");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/expire")
	public ModelAndView expire() {
		ModelAndView mv = new ModelAndView("account/expire");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/account", method = RequestMethod.GET)
	public ModelAndView accountGet() {
		ModelAndView mv = new ModelAndView("account/account");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/account", method = RequestMethod.POST)
	public ModelAndView accountPost() {
		ModelAndView mv = new ModelAndView("account/account");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/reservelist")
	public ModelAndView reserveList() {
		ModelAndView mv = new ModelAndView("account/reservelist");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/reservedetail")
	public ModelAndView reserveDetail() {
		ModelAndView mv = new ModelAndView("account/reservedetail");
		mv.addObject("", "");
		
		return mv;
	}
	
	/* 예매취소 */
	@RequestMapping(value = "/예매취소url")
	public ModelAndView reserveCancel() {
		ModelAndView mv = new ModelAndView("account/reservedetail");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/myreview")
	public ModelAndView myReview() {
		ModelAndView mv = new ModelAndView("account/myreview");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/mycomment")
	public ModelAndView myComment() {
		ModelAndView mv = new ModelAndView("account/mycomment");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/myline")
	public ModelAndView myLine() {
		ModelAndView mv = new ModelAndView("account/myline");
		mv.addObject("", "");
		
		return mv;
	}
	
}

