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

//	@Override
//	public boolean addReview(ReviewPostDTO rpdto) throws Exception {
//		mergeId++;
//		//addPost메서드 동작. 받은 rpdto와 mergeId를 리포지터리에 넘기는 역할.
//		addPost(rpdto, mid);
//		
//		
//		return false;
//	}

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
	public boolean addReview(List<ReviewPostDTO> postlist) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Integer> addPost(ArrayList<Map<String, String>> postlist) throws Exception {
		boolean result = false;
		for(int i = 0; i < postlist.size(); i++) {
			Map<String, String> post = postlist.get(i);
			ReviewPostDTO rpdto = new ReviewPostDTO();
			rpdto.setMergePost(mergeId);
			rpdto.setPostimg(post.get("postimg"));
			rpdto.setPostimg(post.get("posttext"));
			result = dto.insertPost(rpdto);
			if(result == false) {
				break;
			}
		}
		List<Integer> mergePost = null;
		if(result) {
			mergePost = MergePost(mergeId);
			mergeId++;
			System.out.println("mergeId : " + mergeId);
		}
		return mergePost;
	}
	
	@Override
	public List<Integer> MergePost(int mergeId) throws Exception {
		List<Integer> mergePost = dto.selectMergePost(mergeId);
		return mergePost;
	}

}