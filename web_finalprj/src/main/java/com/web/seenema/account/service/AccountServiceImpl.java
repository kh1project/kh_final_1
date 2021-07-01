package com.web.seenema.account.service;

import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.seenema.account.Repository.AccountRepositoryImpl;
import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.movie.dto.MyMovieDTO;
import com.web.seenema.movie.repository.MovieRepositoryImpl;

@Service
public class AccountServiceImpl implements AccountService {
	
	@Autowired
	private MovieRepositoryImpl mdto;
	
	@Autowired
	private AccountRepositoryImpl dto;

	@Override
	public List<List<MyMovieDTO>> mywatchList(int aid) throws Exception {
		List<Integer> temp = dto.selectMyMovieList(aid);
		List<Integer> midlist = temp.stream().distinct().collect(Collectors.toList());
		
		LinkedList<List<MyMovieDTO>> datalist = new LinkedList<List<MyMovieDTO>>();
		
		for(int i = 0; i < midlist.size(); i++) {
			List<MyMovieDTO> data = mdto.selectWatchMovieList(midlist.get(i));
			datalist.add(data);
		}
		return datalist;
	}
	
	@Override
	public List<MyMovieDTO> mywatchSelect(int aid) throws Exception {
		List<MyMovieDTO> data = mdto.selectWatchMovieList(aid);
		return data;
	}
}
