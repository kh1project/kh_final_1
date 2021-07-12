package com.web.seenema.movie.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.movie.dto.MovieLikeDTO;
import com.web.seenema.movie.service.MovieService;

@RestController
@RequestMapping(value = "/movieajax")
public class MovieAjaxController {
	
	@Autowired
	MovieService service;
	
	@RequestMapping(value = "/like")
	public MovieDTO movieLike(
			@RequestParam("userid") int aid,
			@RequestParam("mid") int mid) {
		
		System.out.println("회원 ID -> "+aid);	
		System.out.println("영화 ID -> "+mid+" 중복저장체크");
		if(service.movieLikeDupCheck(aid, mid))
			System.out.println(mid+"는 이미 저장된 영화 입니다.");
		else {
			System.out.println(mid+"는 저장 가능한 영화 입니다.");
			MovieLikeDTO dto = new MovieLikeDTO();
			if(!service.movieLikeDupCheck(aid, mid)) {
				dto.setAid(aid);
				dto.setMid(mid);
				service.insertMovieLike(dto);
			}
			System.out.println("저장성공. 영화 ID -> "+mid);
		}		

		return service.getLikeCnt(mid);
	}
	
	@RequestMapping(value = "/unlike")
	public MovieDTO movieUnlike(
			@RequestParam("userid") int aid,
			@RequestParam("mid") int mid) {
		MovieLikeDTO dto = new MovieLikeDTO();
		dto.setAid(aid);
		dto.setMid(mid);
		
		System.out.println("회원 ID -> "+dto.getAid());	
		System.out.println("like 취소 대상 영화 ID -> "+dto.getMid());
		if(service.movieUnlike(dto) == 1)
			System.out.println(aid+"번 영화 like 취소 성공");
		else
			System.out.println(aid+"번 영화 like 취소 실패");

		return service.getLikeCnt(mid);
	}
	
}