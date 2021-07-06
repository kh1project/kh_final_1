package com.web.seenema.review.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.seenema.account.service.AccountServiceImpl;
import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.movie.dto.MovieImageDTO;
import com.web.seenema.movie.dto.MyMovieDTO;
import com.web.seenema.movie.service.MovieServiceImpl;
import com.web.seenema.review.dto.ReviewDTO;
import com.web.seenema.review.service.ReviewServiceImpl;

@Controller
@RequestMapping(value = "/review")
public class ReviewController {

	@Autowired
	private AccountServiceImpl account;
	@Autowired
	private MovieServiceImpl movie;
	@Autowired
	private ReviewServiceImpl review;
	
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
	public ModelAndView reviewAddGet() throws Exception {
		ModelAndView mv = new ModelAndView();
		
		int aid = 1; //session에서 aid 받아와야함. 임시데이터.
		
		List<List<MyMovieDTO>> mywlist = null;
		mywlist = account.mywatchList(aid);
		
//		System.out.println("---------------reviewController----------------");
//		System.out.println("mywlist.size() : " + mywlist.size());
//		for(int i = 0; i < mywlist.size(); i++) {
//			for(int j = 0; j < mywlist.get(i).size(); j++) {
//				System.out.println("mywlist의 " + i + "번째 데이터 : [" + mywlist.get(i).get(j).getId() + "]" + mywlist.get(i).get(j).getTitle() + " 의 파일 : " + mywlist.get(i).get(j).getPath() + mywlist.get(i).get(j).getName());
//			}
//		}
		
		mv.setViewName("review/reviewadd");
		mv.addObject("mywlist", mywlist);
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/add2", method = RequestMethod.POST)
	public ModelAndView reviewAdd2Post(HttpServletRequest req) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("review");
		
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

