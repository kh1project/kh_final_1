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
//			System.out.println("midlist.get("+i+") 내가 본 영화의 mid : " + midlist.get(i));
			List<MyMovieDTO> data = mdto.selectWatchMovieList(midlist.get(i));
			datalist.add(data);
//			for(int j = 0; j < datalist.size(); j++) {
//				for(int k = 0; k < datalist.get(j).size(); k++) {
//					System.out.println(datalist.get(j).get(k).getTitle() + "의 : " + k + "번째 주소+파일명 : " + datalist.get(j).get(k).getPath() + datalist.get(j).get(k).getName());
//				}
//			}
		}
		return datalist;
	}
}
