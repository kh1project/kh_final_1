package com.web.seenema.controller.movie;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/movie")
public class MovieController {
	
	@RequestMapping(value = "")
	public String movie(Model m) {
		
//		m.addAttribute(전달할 이름, 객체)
//		객체 리스트를 담아서 전달
		System.out.println("movie 페이지");
		return "movie/movie";
	}
	
	@RequestMapping(value = "/detail")
	public ModelAndView movieDetail() {
		ModelAndView mv = new ModelAndView("movie/moviedetail");
		mv.addObject("", "");
		
		return mv;
	}
	
}
