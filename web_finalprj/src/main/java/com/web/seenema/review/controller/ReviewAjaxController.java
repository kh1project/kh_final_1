package com.web.seenema.review.controller;

import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.web.seenema.account.service.AccountServiceImpl;
import com.web.seenema.movie.dto.MyMovieDTO;

@RestController
@RequestMapping(value = "/reviewajax")
public class ReviewAjaxController {
	
	@Autowired
	private AccountServiceImpl account;
	
	@RequestMapping(value = "/addstep2", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
	@ResponseBody	// ViewResolver 를 사용하지 않음.
	public List<MyMovieDTO> addstep2(@RequestParam int selectmovie) throws Exception {
		
		List<MyMovieDTO> smovieimgs = account.mywatchSelect(selectmovie);
		
		for(int i = 0; i < smovieimgs.size(); i++) {
			System.out.println(smovieimgs.get(i).getPath() + smovieimgs.get(i).getName() );
		}
				
		return smovieimgs;
	}
	
	@RequestMapping(value = "/ex12")
	public ModelAndView ex2() {
		ModelAndView mv = new ModelAndView("views/ex2");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/ex13")
	public ModelAndView ex3() {
		ModelAndView mv = new ModelAndView("views/ex3");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/ex14")
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

