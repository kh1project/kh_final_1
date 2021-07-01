package com.web.seenema.movie.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.seenema.movie.dao.MovieDAO;
import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.movie.service.MovieService;

@Controller
@RequestMapping(value = "/movie")
public class MovieController {
	
	@Autowired
	private MovieService service;
	
	@Autowired
	MovieDAO mdao;
	
	@RequestMapping(value = "")
	public String movie(Model model) {
		List<MovieDTO> movieList = service.getAllMoviesSortByReserve();
		List<Map<Integer, String>> reserveRating = service.getReserveRate();
		model.addAttribute("movieList", movieList);
		model.addAttribute("reserveRating", reserveRating);

		return "movie/movie";
	}
	
	@RequestMapping(value = "/detail")
	public String movieDetail(Model model, @RequestParam("mid") int mid) {
		MovieDTO dto = mdao.getMovie(mid);
		model.addAttribute("movie", dto);		
		
		return "movie/moviedetail";
	}
	
}
