package com.web.seenema.account.Repository;

import java.util.List;

import com.web.seenema.movie.dto.MovieDTO;

public interface AccountRepository {
	public List<Integer> selectMyMovieList(int aid) throws Exception;
}
