package com.web.seenema.account.Repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.seenema.movie.dto.MovieDTO;

@Repository
public class AccountRepositoryImpl implements AccountRepository {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<Integer> selectMyMovieList(int aid) throws Exception {
		List<Integer> data = sqlSession.selectList("accountMapper.myMovieSearch", aid);
		return data;
	}

}
