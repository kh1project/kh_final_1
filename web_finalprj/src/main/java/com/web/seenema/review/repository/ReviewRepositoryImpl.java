package com.web.seenema.review.repository;

import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.seenema.comment.dto.CommentSimpleDTO;
import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.movie.dto.MyMovieDTO;
import com.web.seenema.review.dto.ReviewAddDTO;
import com.web.seenema.review.dto.ReviewDTO;
import com.web.seenema.review.dto.ReviewListDTO;
import com.web.seenema.review.dto.ReviewPostDTO;
import com.web.seenema.review.dto.ReviewSimpleDTO;

@Repository
public class ReviewRepositoryImpl implements ReviewRepository {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<ReviewListDTO> selectReviewList() throws Exception {
		return sqlSession.selectList("reviewMapper.selectReviewList");
	}

	@Override
	public ReviewDTO selectReview(int rid) throws Exception {
		return sqlSession.selectOne("reviewMapper.selectReview", rid);
	}

	@Override
	public List<CommentSimpleDTO> selectCommList(int rid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Integer> selectWatchList(int aid) throws Exception {
		
		return null;
	}

	@Override
	public MovieDTO selectMovie(int mid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insertReview(ReviewAddDTO radto) throws Exception {
		boolean result = false;
		int rs = sqlSession.insert("reviewMapper.insertReview", radto);
		if(rs == 1) {
			result = true;
		}
		return result;
	}

	@Override
	public boolean updateReview(ReviewDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteReview(int rid) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}
	
	@Override
	public Integer firstInsertPost(ReviewPostDTO rpdto) throws Exception {
		int rs = sqlSession.insert("reviewMapper.firstInsertPost", rpdto);
		int mpid = rpdto.getMergePost();
		return mpid;
	}
	
	@Override
	public boolean insertPost(ReviewPostDTO rpdto) throws Exception {
		boolean result = false;
		int rs = sqlSession.insert("reviewMapper.insertPost", rpdto);
		if(rs == 1) {
			result = true;
		}
		return result;
	}
	
	@Override
	public List<ReviewPostDTO> selectMergePost(String cont) throws Exception {
		return sqlSession.selectList("reviewMapper.selectMergePost", cont);
	}
}