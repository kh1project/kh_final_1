package com.web.kh.seenema.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/reviewajax")
public class ReviewAjaxController {
	
	@RequestMapping(value = "/ex1")
	public ModelAndView ex1() {
		ModelAndView mv = new ModelAndView("views/ex1");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/ex2")
	public ModelAndView ex2() {
		ModelAndView mv = new ModelAndView("views/ex2");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/ex3")
	public ModelAndView ex3() {
		ModelAndView mv = new ModelAndView("views/ex3");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/ex4")
	public ModelAndView ex4() {
		ModelAndView mv = new ModelAndView("views/ex4");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/ex5")
	public ModelAndView ex5() {
		ModelAndView mv = new ModelAndView("views/ex5");
		mv.addObject("", "");
		
		return mv;
	}
	
}

