package com.web.seenema.movie.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.web.seenema.movie.dao.MovieDAO;
import com.web.seenema.movie.dto.MovieDTO;

@Service
public class MovieServiceImpl implements MovieService {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	MovieDAO dao;

	@Override
	public List<MovieDTO> getAllMovies() {
		List<MovieDTO> list = dao.getAllMovies();
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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MovieDTO> getPreMovies() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<MovieDTO> getAllMoviesSortByReserve() {
		List<MovieDTO> list = dao.getAllMoviesSortByReserve();
		return list;
	}
	
	@Override
	public List<Map<Integer, String>> getReserveRate() {
		Map<Integer, String> map = new HashMap<>();
		List<Map<Integer, String>> mapList = new ArrayList<>();
		
		List<MovieDTO> list = getAllMoviesSortByReserve();
		int rcntAll = 0;
		for(MovieDTO movie : list) {
			rcntAll += movie.getRcnt();
		}
		
		for(MovieDTO movie : list) {
			String reserveRate = 
					String.format("%.2f", (movie.getRcnt()*100)/(double)rcntAll);
			map.put(movie.getId(), reserveRate);
			mapList.add(map);
		}
		
		return mapList;
	}

}
