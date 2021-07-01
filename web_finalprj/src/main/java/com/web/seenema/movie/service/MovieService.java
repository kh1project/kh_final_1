package com.web.seenema.movie.service;

import java.util.List;

import com.web.seenema.movie.dto.MovieImageDTO;

public interface MovieService {
	public List<MovieImageDTO> findMovieList(int mid) throws Exception;
}
