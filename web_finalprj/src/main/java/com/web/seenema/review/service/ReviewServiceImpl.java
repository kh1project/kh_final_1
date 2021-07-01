package com.web.seenema.review.service;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.seenema.comment.dto.CommentSimpleDTO;
import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.movie.dto.MovieImageDTO;
import com.web.seenema.movie.repository.MovieRepositoryImpl;
import com.web.seenema.review.dto.ReviewAddDTO;
import com.web.seenema.review.dto.ReviewDTO;
import com.web.seenema.review.dto.ReviewSimpleDTO;
import com.web.seenema.review.repository.ReviewRepositoryImpl;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewRepositoryImpl dto;
	
	@Autowired
	private MovieRepositoryImpl mdto;

	@Override
	public List<ReviewSimpleDTO> reviewList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ReviewDTO reviewOne(int rid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CommentSimpleDTO> commentList(int rid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MovieDTO movieOne(int mid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean addReview(ReviewAddDTO dto) throws Exception {
		// TODO Auto-generated method stub
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
	public List<MovieImageDTO> movieImageList(int mid) throws Exception {
		List<MovieImageDTO> data = mdto.selectMovieImageList(mid);
		return data;
	}

}