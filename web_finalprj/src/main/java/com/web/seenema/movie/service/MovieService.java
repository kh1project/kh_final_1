package com.web.seenema.movie.service;

import java.util.List;
import java.util.Map;

import com.web.seenema.movie.dto.MovieDTO;

public interface MovieService {
	public List<MovieDTO> getAllMovies();
	public List<MovieDTO> getCurrentMovies();
	public List<MovieDTO> getEndMovies();
	public List<MovieDTO> getPreMovies();
	public MovieDTO getMovie(int mid);
	public List<MovieDTO> getAllMoviesSortByReserve();
	public Map<Integer, String> getReserveRate();
}
