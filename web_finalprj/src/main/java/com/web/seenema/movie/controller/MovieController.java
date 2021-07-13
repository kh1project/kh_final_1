package com.web.seenema.movie.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.seenema.line.dto.LineDTO;
import com.web.seenema.line.dto.PagingInfoDTO;
import com.web.seenema.line.service.LinePagingService;
import com.web.seenema.movie.dao.MovieDAO;
import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.movie.dto.MovieLikeDTO;
import com.web.seenema.movie.service.MovieService;

@Controller
@RequestMapping(value = "/")
public class MovieController {
	
	@Autowired
	private MovieService service;
	
	@Autowired
	MovieDAO mdao;
	
	@Autowired
	private LinePagingService pagingService;
	
	@RequestMapping(value = "/movie")
	public String movie(Model model, HttpServletRequest request, @RequestParam(required = false) String sort) {
		
		List<MovieDTO> movieList;
		int num = 1;
		// 1 -> 예매율순  2 -> 추천순  3 -> 별점순
		if(sort == null)
			movieList = service.getAllMovies(num);
		else {
			num = Integer.parseInt(sort);
			movieList = service.getAllMovies(num);
		}
		
		
		
		Map<Integer, String> reserveRating = service.getReserveRate();
		
		HttpSession session = request.getSession();
		session.setAttribute("id", 1);
		List<MovieLikeDTO> likeList = service.getMovieLikeList((int) session.getAttribute("id"));
		
		model.addAttribute("movieList", movieList);
		model.addAttribute("reserveRating", reserveRating);
		model.addAttribute("likeList", likeList);
		model.addAttribute("sort", num);
		
		return "movie/movie";
	}
	
	@RequestMapping(value = "/movie/detail")
	public String movieDetail(Model model, @RequestParam("mid") int mid, HttpServletRequest request) {
		MovieDTO dto = mdao.getMovie(mid);
		Map<Integer, String> reserveRating = service.getReserveRate();
		model.addAttribute("movie", dto);		
		model.addAttribute("reserveRating", reserveRating.get(mid));
		
//		HttpSession session = request.getSession();
//		List<MovieLikeDTO> likeList = service.getMovieLikeList((int) session.getAttribute("id"));
//		model.addAttribute("likeList", likeList);
		
		/** 아영님 코드 시작 */
		// 1page 에 출력할 한줄평 데이터
		List<LineDTO> initLinelist = pagingService.initLinelist(mid);
		
		// 아이디 처리
		for(LineDTO line : initLinelist) {
			String email = line.getEmail().split("@")[0];
			email = email.substring(0, email.length() - 2);
			email += "**";
			line.setEmail(email);
		}
		
		// 전체 데이터 수
		int totalrow = pagingService.totalRow(mid);
		
		// 한 페이지에 출력하고픈 데이터 수량
		int list_cnt = 10;
				
		// 최대 페이지 번호
		int max_page = 1;
		if(totalrow != 0) {
			if (totalrow % list_cnt == 0) {
				max_page = totalrow / list_cnt;
			} else {
				max_page = (totalrow / list_cnt) + 1;
			}
		}
		
		PagingInfoDTO info = new PagingInfoDTO();
		info.setTotalrow(totalrow);
		info.setMax_page(max_page);
		
		
		model.addAttribute("initLinelist", initLinelist);
		model.addAttribute("initPagingInfo", info);
		
		/** 아영님 코드 끝 */

		return "movie/moviedetail";
	}
	
	
	@RequestMapping(value = "/testview")
	public String testview() {		

		return "movie/test";
	}
	
}