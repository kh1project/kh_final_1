package com.web.seenema.movie.dao;

import java.util.List;

import com.web.seenema.movie.dto.MovieDTO;

public interface MovieDAO {
	public List<MovieDTO> getAllMovies();
	public List<MovieDTO> getCurrentMovies();
	public List<MovieDTO> getEndMovies();
	public List<MovieDTO> getPreMovies();
	public MovieDTO getMovie(int mid);
	public List<MovieDTO> getAllMoviesSortByReserve();
}
