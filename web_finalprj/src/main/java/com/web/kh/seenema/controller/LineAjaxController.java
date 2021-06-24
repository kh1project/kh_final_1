package com.web.kh.seenema.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/lineajax")
public class LineAjaxController {
	
	@RequestMapping(value = "")
	public ModelAndView ex1() {
		ModelAndView mv = new ModelAndView("views/ex1");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/ex4")
	public ModelAndView ex2() {
		ModelAndView mv = new ModelAndView("views/ex2");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/ex4")
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
	
}

