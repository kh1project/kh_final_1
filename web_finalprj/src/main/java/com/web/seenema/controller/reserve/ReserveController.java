package com.web.seenema.controller.reserve;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/reserve")
public class ReserveController {
	
	@RequestMapping(value = "")
	public ModelAndView reserve() {
		ModelAndView mv = new ModelAndView("reserve/reserve");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/schedule")
	public ModelAndView schedule() {
		ModelAndView mv = new ModelAndView("reserve/schedule");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/time")
	public ModelAndView time() {
		ModelAndView mv = new ModelAndView("reserve/time");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/seats")
	public ModelAndView seats() {
		ModelAndView mv = new ModelAndView("reserve/seats");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/reservecheck")
	public ModelAndView reservecheck() {
		ModelAndView mv = new ModelAndView("reserve/reservecheck");
		mv.addObject("", "");
		
		return mv;
	}
	
}

