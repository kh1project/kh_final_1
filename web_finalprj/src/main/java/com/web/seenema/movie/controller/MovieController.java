package com.web.seenema.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/movie")
public class MovieController {
	
	@RequestMapping(value = "")
	public ModelAndView movie() {
		ModelAndView mv = new ModelAndView("movie/movie");
		mv.addObject("", "");
		System.out.println("movie 페이지");
		return mv;
	}
	
	@RequestMapping(value = "/detail")
	public ModelAndView movieDetail() {
		ModelAndView mv = new ModelAndView("movie/moviedetail");
		mv.addObject("", "");
		
		return mv;
	}
	
}
