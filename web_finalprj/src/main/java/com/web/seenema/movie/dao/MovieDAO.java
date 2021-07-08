package com.web.seenema.movie.dao;

import java.util.List;

import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.movie.dto.MovieLikeDTO;

public interface MovieDAO {
	public List<MovieDTO> getAllMovies();
	public List<MovieDTO> getCurrentMovies();
	public List<MovieDTO> getEndMovies();
	public List<MovieDTO> getPreMovies();
	public MovieDTO getMovie(int mid);
	public List<MovieDTO> getAllMoviesSortByReserve();
	public void movieLike(int aid, int mid);
	public List<MovieLikeDTO> getMovieLikeList(int aid);
	public int insertMovieLike(MovieLikeDTO dto);
	public int deleteMovieLike(MovieLikeDTO dto);
	public MovieDTO getLikeCnt(int mid);
}