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
import com.web.seenema.review.dto.ReviewPostDTO;
import com.web.seenema.review.dto.ReviewSimpleDTO;

@Repository
public class ReviewRepositoryImpl implements ReviewRepository {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<ReviewSimpleDTO> selectReviewList() throws Exception {
		return null;
	}

	@Override
	public ReviewDTO selectReview(int rid) throws Exception {
		return null;
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
	public boolean insertReview(ReviewAddDTO dto) throws Exception {
		return false;
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
		boolean result = false;
		int rs = sqlSession.insert("reviewMapper.firstInsertPost", rpdto);
		int mpid = rpdto.getMergePost();
		return mpid; //이거 잘 되는지 확인하기
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
	public List<Integer> selectMergePost(int mergeId) throws Exception {
		List<Integer> data = sqlSession.selectList("reviewMapper.selectMergePost", mergeId);
		for(int i = 0; i < data.size(); i++) {
			System.out.println("Repository selectMergePost : " + data.get(i));
		}
		return data;
	}
}