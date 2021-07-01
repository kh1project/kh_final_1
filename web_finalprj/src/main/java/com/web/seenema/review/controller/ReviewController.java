package com.web.seenema.review.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/review")
public class ReviewController {
	
	@RequestMapping(value = "")
	public ModelAndView review() {
		ModelAndView mv = new ModelAndView("review/review");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/detail")
	public ModelAndView reviewDetail() {
		ModelAndView mv = new ModelAndView("review/reviewdetail");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/reviewadd", method = RequestMethod.GET)
	public ModelAndView reviewAddGet() {
		ModelAndView mv = new ModelAndView("review/reviewadd");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/reviewadd", method = RequestMethod.POST)
	public ModelAndView reviewAddPost() {
		ModelAndView mv = new ModelAndView("review/reviewadd");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/reviewupdate", method = RequestMethod.GET)
	public ModelAndView reviewUpdateGet() {
		ModelAndView mv = new ModelAndView("review/reviewupdate");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/reviewupdate", method = RequestMethod.POST)
	public ModelAndView reviewUpdatePost() {
		ModelAndView mv = new ModelAndView("review/reviewupdate");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/reviewdelete")
	public ModelAndView reviewDelete() {
		ModelAndView mv = new ModelAndView("review/review.jsp");
		mv.addObject("", "");
		
		return mv;
	}
	
}

