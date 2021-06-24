package com.web.kh.seenema.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/movieajax")
public class MovieAjaxController {
	
	@RequestMapping(value = "")
	public ModelAndView movieAjax() {
		ModelAndView mv = new ModelAndView("views/movie");
		mv.addObject("", "");
		
		return mv;
	}
	
}

