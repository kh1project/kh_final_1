package com.web.seenema.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/index")
public class MainController {
	
	@RequestMapping(value = "")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("", "");
		
		return mv;
	}
	
}
