package com.web.seenema.movie.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.seenema.movie.dto.MovieImageDTO;

@Repository
public class MovieRepositoryImpl implements MovieRepository {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<MovieImageDTO> selectMovieImageList(int mid) throws Exception {
		List<MovieImageDTO> data = sqlSession.selectList("movieMapper.movieImageSearch", mid);
		return data;
	}

}
