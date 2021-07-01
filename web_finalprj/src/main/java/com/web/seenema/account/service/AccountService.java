package com.web.seenema.account.service;

import java.util.List;

import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.movie.dto.MyMovieDTO;

public interface AccountService {

	public List<List<MyMovieDTO>> mywatchList(int aid) throws Exception;

	public List<MyMovieDTO> mywatchSelect(int aid) throws Exception;

}
