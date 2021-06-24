package com.web.kh.seenema.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/line")
public class LineController {
	
	@RequestMapping(value = "")
	public ModelAndView line() {
		ModelAndView mv = new ModelAndView("views/line");
		mv.addObject("", "");
		
		return mv;
	}
	
}

