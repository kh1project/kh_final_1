package com.web.seenema.movie.service;

import java.util.List;

import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.movie.dto.MovieImageDTO;
import com.web.seenema.movie.dto.MyMovieDTO;

public interface MovieService {
	public List<MovieImageDTO> findMovieImageList(int mid) throws Exception;

	List<MyMovieDTO> mywatchmovieList(int mid) throws Exception;
}
