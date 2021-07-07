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

import com.web.seenema.movie.dao.MovieDAO;
import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.movie.dto.MovieLikeDTO;
import com.web.seenema.movie.service.MovieService;

@Controller
public class MovieController {
	
	@Autowired
	private MovieService service;
	
	@Autowired
	MovieDAO mdao;
	
	@RequestMapping(value = "/movie")
	public String movie(Model model, HttpServletRequest request) {
		List<MovieDTO> movieList = service.getAllMoviesSortByReserve();
		Map<Integer, String> reserveRating = service.getReserveRate();
		
		HttpSession session = request.getSession();
		session.setAttribute("id", 1);
		List<MovieLikeDTO> likeList = service.getMovieLikeList((int) session.getAttribute("id"));
		
		model.addAttribute("movieList", movieList);
		model.addAttribute("reserveRating", reserveRating);
		model.addAttribute("likeList", likeList);		
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
		
		return "movie/moviedetail";
	}
	
	
	@RequestMapping(value = "/testview")
	public String testview() {		

		return "movie/test";
	}
	
}