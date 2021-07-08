package com.web.seenema.movie.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.seenema.line.dto.LineDTO;
import com.web.seenema.line.service.LineService;
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
	
	@Autowired
	private LineService lineService;
	
	@RequestMapping(value = "")
	public String movie(Model model) {
		List<MovieDTO> movieList = service.getAllMoviesSortByReserve();
		Map<Integer, String> reserveRating = service.getReserveRate();
		model.addAttribute("movieList", movieList);
		model.addAttribute("reserveRating", reserveRating);

		return "movie/movie";
	}
	
	@RequestMapping(value = "/detail")
	public String movieDetail(Model model, @RequestParam("mid") int mid) {
		MovieDTO dto = mdao.getMovie(mid);
		Map<Integer, String> reserveRating = service.getReserveRate();
		model.addAttribute("movie", dto);		
		model.addAttribute("reserveRating", reserveRating.get(mid));
		
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

		return "movie/moviedetail";
	}
}
