package com.web.seenema.movie.repository;

import java.util.List;

import com.web.seenema.movie.dto.MovieImageDTO;

public interface MovieRepository {
	public List<MovieImageDTO> selectMovieImageList(int mid) throws Exception;
}
