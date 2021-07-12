package com.web.seenema.movie.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.seenema.line.dto.LineDTO;
import com.web.seenema.line.service.LineService;
import com.web.seenema.movie.dao.MovieDAO;
import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.movie.dto.MovieLikeDTO;
import com.web.seenema.movie.service.MovieService;

@Controller
@RequestMapping(value = "/")
public class MovieController {
	
	@Autowired
	private MovieService service;
	
	@Autowired
	MovieDAO mdao;
	
	@Autowired
	private LineService lineService;
	
	@RequestMapping(value = "/movie")
	public String movie(Model model, HttpServletRequest request, @RequestParam(required = false) String sort) {
		
		List<MovieDTO> movieList;
		int num = 1;
		// 1 -> 예매율순  2 -> 추천순  3 -> 별점순
		if(sort == null)
			movieList = service.getAllMovies(num);
		else {
			num = Integer.parseInt(sort);
			movieList = service.getAllMovies(num);
		}
		
		
		
		Map<Integer, String> reserveRating = service.getReserveRate();
		
		HttpSession session = request.getSession();
		session.setAttribute("id", 1);
		List<MovieLikeDTO> likeList = service.getMovieLikeList((int) session.getAttribute("id"));
		
		model.addAttribute("movieList", movieList);
		model.addAttribute("reserveRating", reserveRating);
		model.addAttribute("likeList", likeList);
		model.addAttribute("sort", num);
		
		return "movie/movie";
	}
	
	@RequestMapping(value = "/movie/detail")
	public String movieDetail(Model model, @RequestParam("mid") int mid, HttpServletRequest request) {
		MovieDTO dto = mdao.getMovie(mid);
		Map<Integer, String> reserveRating = service.getReserveRate();
		model.addAttribute("movie", dto);		
		model.addAttribute("reserveRating", reserveRating.get(mid));
		
		HttpSession session = request.getSession();
		List<MovieLikeDTO> likeList = service.getMovieLikeList((int) session.getAttribute("id"));
		model.addAttribute("likeList", likeList);
		
		// 아영님 코드 시작
		// linelist 추가
		List<LineDTO> linelist = lineService.linelist(mid);
		for(LineDTO line : linelist) {
			String email = line.getEmail().split("@")[0];
			email = email.substring(0, email.length() - 2);
			email += "**";
			line.setEmail(email);
		}
		
		model.addAttribute("linelist", linelist);
		model.addAttribute("linecnt", linelist.size());
		// 아영님 코드 끝

		return "movie/moviedetail";
	}
	
	
	@RequestMapping(value = "/testview")
	public String testview() {		

		return "movie/test";
	}
	
}