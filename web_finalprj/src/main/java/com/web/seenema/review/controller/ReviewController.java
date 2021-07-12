package com.web.seenema.review.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.web.seenema.account.service.AccountServiceImpl;
import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.movie.dto.MovieImageDTO;
import com.web.seenema.movie.dto.MyMovieDTO;
import com.web.seenema.movie.service.MovieServiceImpl;
import com.web.seenema.review.dto.ReviewAddDTO;
import com.web.seenema.review.dto.ReviewDTO;
import com.web.seenema.review.dto.ReviewListDTO;
import com.web.seenema.review.dto.ReviewPostDTO;
import com.web.seenema.review.dto.ReviewSimpleDTO;
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
	public ModelAndView review() throws Exception {
		ModelAndView mv = new ModelAndView("review/review");
		List<ReviewListDTO> list = review.reviewList();
		for(int i = 0; i < list.size(); i++) {
			List<String> firstPost = review.firstContent(list.get(i).getContents());
			if(firstPost.get(0) == "-1") {
				System.out.println("리뷰 존재하지 않음");
			} else {
				list.get(i).setContents(firstPost.get(0));
				list.get(i).setImgurl(firstPost.get(1));
			}
		}
		System.out.println(list.get(0));
		mv.addObject("list", list);
		
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
		
		mv.setViewName("review/reviewadd");
		mv.addObject("mywlist", mywlist);
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String reviewAddPost(Model m, @ModelAttribute ReviewAddDTO radto) throws Exception {
		String forward = "";
		
		int aid = 1; //session에서 aid 받아와야함. 임시데이터.
		radto.setAid(aid);

		//addreview 메서드 호출
		boolean result = review.addReview(radto);
				
		if(result) {
			// 작성 성공시 리뷰 리스트로 이동
			forward = "redirect:/review";
		} else {
			// 실패 했을 때 작성 페이지 재전송
			m.addAttribute("data", radto);
			m.addAttribute(forward);
			forward = "review/add";
		}
		//forward = "redirect:/review";
		return forward;
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

