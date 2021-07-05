package com.web.seenema.movie.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.movie.dto.MovieLikeDTO;

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
		return sqlSession.selectOne("movieMapper.getMovie", mid);
	}
	
	@Override
	public List<MovieDTO> getPreMovies() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<MovieDTO> getAllMoviesSortByReserve() {		
		System.out.println("영화 정렬 dao 실행");
		return sqlSession.selectList("movieMapper.getAllMoviesSortByReserve");
	}
	
	@Override
	public void movieLike(int aid, int mid) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public List<MovieLikeDTO> getMovieLikeList(int aid) {		
		return sqlSession.selectList("movieMapper.getLikeList", aid);
	}
	
	@Override
	public int insertMovieLike(MovieLikeDTO dto) {
		System.out.println("insertMovieLike dao 실행");
		return sqlSession.insert("movieMapper.insertMovieLike", dto);	
	}
	
	@Override
	public int deleteMovieLike(MovieLikeDTO dto) {
		return sqlSession.delete("movieMapper.deleteMovieLike", dto);
	}
	
}