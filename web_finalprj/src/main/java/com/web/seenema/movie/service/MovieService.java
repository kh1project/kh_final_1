package com.web.seenema.movie.service;

import java.util.List;
import java.util.Map;

import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.movie.dto.MovieImageDTO;
//import com.web.seenema.movie.dto.MovieImageDTO;
//import com.web.seenema.movie.dto.MyMovieDTO;

public interface MovieService {
	public List<MovieDTO> getAllMovies();
	public List<MovieDTO> getCurrentMovies();
	public List<MovieDTO> getEndMovies();
	public List<MovieDTO> getPreMovies();
	public List<MovieDTO> getMovie(int mid) throws Exception;
	public List<MovieDTO> getAllMoviesSortByReserve();
	public Map<Integer, String> getReserveRate();
//	public List<MovieImageDTO> findMovieImageList(int mid) throws Exception;
//	List<MyMovieDTO> mywatchmovieList(int mid) throws Exception;
	
	// 예매 파트에 포스터 가져오기.
	public List<MovieImageDTO> getPoster(int mid) throws Exception;
}
