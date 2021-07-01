package com.web.seenema.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.seenema.account.Repository.AccountRepositoryImpl;
import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.movie.dto.MovieImageDTO;
import com.web.seenema.movie.dto.MyMovieDTO;
import com.web.seenema.movie.repository.MovieRepositoryImpl;

@Service
public class MovieServiceImpl implements MovieService {
	
	@Autowired
	private MovieRepositoryImpl dto;

	@Override
	public List<MovieImageDTO> findMovieImageList(int mid) throws Exception {
		List<MovieImageDTO> data = dto.selectMovieImageList(mid);
		return data;
	}
	
	@Override
	public List<MyMovieDTO> mywatchmovieList(int mid) throws Exception {
		List<MyMovieDTO> data = dto.selectWatchMovieList(mid);
		return data;
	}

}
