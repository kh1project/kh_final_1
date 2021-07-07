package com.web.seenema.review.repository;

import java.util.*;

import com.web.seenema.comment.dto.CommentSimpleDTO;
import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.review.dto.ReviewAddDTO;
import com.web.seenema.review.dto.ReviewDTO;
import com.web.seenema.review.dto.ReviewPostDTO;
import com.web.seenema.review.dto.ReviewSimpleDTO;

public interface ReviewRepository {

    public List<ReviewSimpleDTO> selectReviewList() throws Exception;
    public ReviewDTO selectReview(int rid) throws Exception;
    public List<CommentSimpleDTO> selectCommList(int rid) throws Exception;
    public List<Integer> selectWatchList(int aid) throws Exception;
    public MovieDTO selectMovie(int mid) throws Exception;
    public boolean insertReview(ReviewAddDTO dto) throws Exception;
    public boolean updateReview(ReviewDTO dto) throws Exception;
    public boolean deleteReview(int rid) throws Exception;
    public boolean insertPost(ReviewPostDTO rpdto) throws Exception;
    public List<Integer> selectMergePost(int mergeId) throws Exception;

}