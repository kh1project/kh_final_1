package com.web.seenema.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.seenema.movie.dto.MovieImageDTO;
import com.web.seenema.movie.repository.MovieRepository;

@Service
public class MovieServiceImpl implements MovieService {
	
	@Autowired
	private MovieRepository dto;

	@Override
	public List<MovieImageDTO> findMovieList(int mid) throws Exception {
		List<MovieImageDTO> data = dto.selectMovieImageList(mid);
		return data;
	}

}
