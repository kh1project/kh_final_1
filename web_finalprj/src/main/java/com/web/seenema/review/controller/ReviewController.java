package com.web.seenema.review.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.seenema.movie.dto.MovieImageDTO;
import com.web.seenema.movie.service.MovieService;
import com.web.seenema.review.dto.ReviewDTO;
import com.web.seenema.review.service.ReviewService;

@Controller
@RequestMapping(value = "/review")
public class ReviewController {

	@Autowired
	private ReviewService review;
	@Autowired
	private MovieService movie;
	
	@RequestMapping(value = "")
	public ModelAndView review() {
		ModelAndView mv = new ModelAndView("review/review");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/detail")
	public ModelAndView reviewDetail(int rid) {
		ModelAndView mv = new ModelAndView("review/reviewdetail");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView reviewAddGet() {
		ModelAndView mv = new ModelAndView("review/reviewadd");
		mv.addObject("", "");
		
		return mv;
	}
//	public ModelAndView reviewAddGet(int mid) {
//		ModelAndView mv = new ModelAndView("review/reviewadd");
//		mv.addObject("", "");
//		
//		return mv;
//	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public ModelAndView reviewAddPost(HttpServletRequest req) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int mid = 1; //mid를 받아와야한다. 사용자로부터. 임시로 1.
		
		List<MovieImageDTO> mimglist = null;
		mimglist = movie.findMovieList(mid);
		
		mv.setViewName("review/reviewadd");
		mv.addObject("mimglist", mimglist);
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView reviewUpdateGet(Model m, int rid) {
		ModelAndView mv = new ModelAndView("review/reviewupdate");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView reviewUpdatePost(ReviewDTO dto) {
		ModelAndView mv = new ModelAndView("review/reviewupdate");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/delete")
	public ModelAndView reviewDelete(int rid) {
		ModelAndView mv = new ModelAndView("review/review.jsp");
		mv.addObject("", "");
		
		return mv;
	}
	
}

