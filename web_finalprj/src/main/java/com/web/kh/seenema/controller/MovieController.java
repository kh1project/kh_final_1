package com.web.kh.seenema.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/movie")
public class MovieController {
	
	@RequestMapping(value = "")
	public ModelAndView movie() {
		ModelAndView mv = new ModelAndView("views/movie");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/detail")
	public ModelAndView movieDetail() {
		ModelAndView mv = new ModelAndView("views/moviedetail");
		mv.addObject("", "");
		
		return mv;
	}
	
}
