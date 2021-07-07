package com.web.seenema.movie.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

//import com.web.seenema.account.Repository.AccountRepositoryImpl;
//import com.web.seenema.movie.dto.MovieImageDTO;
//import com.web.seenema.movie.dto.MyMovieDTO;
//import com.web.seenema.movie.repository.MovieRepositoryImpl;
import com.web.seenema.movie.dao.MovieDAO;
import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.movie.dto.MovieImageDTO;
import com.web.seenema.movie.repository.MovieRepository;

@Service
public class MovieServiceImpl implements MovieService {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	private MovieRepository mdao;
	
	@Autowired
	MovieDAO dao;
	
	// 주석은 효정님 코드(2021-07-02)
//	@Autowired
//	private MovieRepositoryImpl dto;
//	
//	@Override
//	public List<MovieImageDTO> findMovieImageList(int mid) throws Exception {
//		List<MovieImageDTO> data = dto.selectMovieImageList(mid);
//		return data;
//	}
//	
//	@Override
//	public List<MyMovieDTO> mywatchmovieList(int mid) throws Exception {
//		List<MyMovieDTO> data = dto.selectWatchMovieList(mid);
//		return data;
//	}

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
	public List<MovieDTO> getMovie(int mid) throws Exception {
		List<MovieDTO> list = mdao.selectMovie(mid);
		return list;
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
	public Map<Integer, String> getReserveRate() {
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
		}
		
		return map;
	}

	@Override
	public List<MovieImageDTO> getPoster(int mid) throws Exception {
		List<MovieImageDTO> movieimg = mdao.getPoster(mid);
		return movieimg;
	}

}
