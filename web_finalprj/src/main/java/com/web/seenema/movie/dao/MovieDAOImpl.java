package com.web.seenema.movie.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.web.seenema.movie.dto.MovieDTO;

@Repository
public class MovieDAOImpl implements MovieDAO {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<MovieDTO> getAllMovies() {
		List<MovieDTO> list = sqlSession.selectList("movieMapper.getAllMovies");
		
		return list;
	}
	
	@Override
	public List<MovieDTO> getCurrentMovies() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<MovieDTO> getEndMovies() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public MovieDTO getMovie(int mid) {
		MovieDTO dto = sqlSession.selectOne("movieMapper.getMovie", mid); 
		return dto;
	}
	
	@Override
	public List<MovieDTO> getPreMovies() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<MovieDTO> getAllMoviesSortByReserve() {
		List<MovieDTO> list = sqlSession.selectList("movieMapper.getAllMoviesSortByReserve");
		
		return list;
	}
	
	
}
