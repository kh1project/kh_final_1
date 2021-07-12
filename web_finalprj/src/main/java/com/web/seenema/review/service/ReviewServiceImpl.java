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
import com.web.seenema.review.dto.ReviewListDTO;
import com.web.seenema.review.dto.ReviewPostDTO;
import com.web.seenema.review.dto.ReviewSimpleDTO;
import com.web.seenema.review.repository.ReviewRepositoryImpl;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	private int mergeId;
	
	@Autowired
	private ReviewRepositoryImpl dto;
	
	@Autowired
	private MovieRepositoryImpl mdto;

	@Override
	public List<ReviewListDTO> reviewList() throws Exception {
		List<ReviewListDTO> data = dto.selectReviewList();
		return data;
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
	public boolean addReview(ReviewAddDTO radto) throws Exception {
		return dto.insertReview(radto);
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

	@Override
	public int addPost(ArrayList<Map<String, String>> postlist) throws Exception {
		boolean result = false;
		for(int i = 0; i < postlist.size(); i++) {
			Map<String, String> post = postlist.get(i);
			ReviewPostDTO rpdto = new ReviewPostDTO();
			rpdto.setPostimg(post.get("postimg"));
			rpdto.setPosttext(post.get("posttext"));
			if(i == 0) {
				mergeId = dto.firstInsertPost(rpdto);
				if(mergeId > 0) {
					result = true;
				}
			} else {
				rpdto.setMergePost(mergeId);
				result = dto.insertPost(rpdto);
			}			
			if(result == false) {
				break;
			}
		}
		
		return mergeId;
	}
	
	@Override
	public List<ReviewPostDTO> MergePost(String cont) throws Exception {
		System.out.println("select하는 mergeId : " + cont);
		List<ReviewPostDTO> mergePost = dto.selectMergePost(cont);
		return mergePost;
	}

	@Override
	public List<String> firstContent(String mid) throws Exception {
		List<ReviewPostDTO> contents = dto.selectMergePost(mid);
		List<String> firstPost = new ArrayList<String>();
		firstPost.add(contents.get(0).getPosttext());
		firstPost.add(contents.get(0).getPostimg());
		if(firstPost.size() == 0) {
			firstPost.add("-1");
		}
		return firstPost;
	}
}