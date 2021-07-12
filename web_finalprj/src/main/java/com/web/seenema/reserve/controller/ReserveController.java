package com.web.seenema.reserve.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.movie.dto.MovieImageDTO;
import com.web.seenema.movie.service.MovieService;
import com.web.seenema.pay.dto.PayDTO;
import com.web.seenema.reserve.dto.BranchDTO;
import com.web.seenema.reserve.dto.BranchTheaterDTO;
import com.web.seenema.reserve.dto.MovieTheaterDTO;
import com.web.seenema.reserve.dto.SeatDTO;
import com.web.seenema.reserve.dto.TimeDTO;
import com.web.seenema.reserve.service.ReserveService;

@Controller
@RequestMapping(value = "/reserve")
public class ReserveController {
	
	@Autowired
	private ReserveService ress;
	
	@Autowired
	private MovieService movies;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String selectLocation(@RequestParam String location, Model m) throws Exception {
		List<BranchDTO> b = ress.branchList(location);
		m.addAttribute("branchlist", b);
		return "reserve/reserve";
	}
	
	@RequestMapping(value = "/schedule", method = RequestMethod.GET)
	public String movieList(Model m) throws Exception {
		List<MovieDTO> datas = ress.movieList();
		m.addAttribute("movieAll_list", datas);
		return "reserve/schedule";
	}
	
	@RequestMapping(value = "/time")
	public String timeList(Model m) throws Exception {
		List<TimeDTO> time = ress.timeTableInfo();
		m.addAttribute("timelist", time);
		return "reserve/time";
	}
	
	@RequestMapping(value = "/seats", method = RequestMethod.GET)
	public ModelAndView seats(HttpServletRequest req) throws Exception {
		int tid = 1; // 임시 상영관 번호
		int mid = 1; // 임시 영화 번호
		
		MovieTheaterDTO mtdto = new MovieTheaterDTO();
		// 상영관 정보 가져오기.
		mtdto.setTid(tid);
		
		List<SeatDTO> seatlists = ress.seatList(tid);
		Map<String, Object> seatcnt = ress.seatcntlist(tid);
		
		// 영화 정보 가져오기.
		List<MovieDTO> moviedata = movies.getMovies(mid);
		
		ModelAndView mv = new ModelAndView("reserve/seats");
		mv.addObject("moviedata", moviedata);
		mv.addObject("seatlists", seatlists);
		mv.addObject("seatcnt", seatcnt);
		
		return mv;
	}
	
	@RequestMapping(value = "/reservecheck", method= RequestMethod.POST)
	public ModelAndView reservecheck(HttpServletRequest req, HttpServletResponse response) throws Exception {
		ModelAndView mv = new ModelAndView("reserve/reservecheck");
		
		int mid = Integer.parseInt(req.getParameter("mid"));
		int tid = Integer.parseInt(req.getParameter("theater"));
		
		List<BranchTheaterDTO> btlist = ress.getmovieTheater(tid);
		
		List<MovieDTO> moviedata = movies.getMovies(mid);
		List<MovieImageDTO> poster = movies.getPoster(mid);
		
		String Seat ="";
		String[] seatinfo = req.getParameterValues("seat");
		for(int i = 0; i < seatinfo.length; i++) {
			if(i < seatinfo.length - 1) {
				Seat += seatinfo[i] + ", ";
			} else if(i == seatinfo.length - 1) {
				Seat += seatinfo[i];
			}
		}
		
		// 가격 가져오기
		PayDTO pay = new PayDTO();
		
		int adult = 0;
		int teenager = 0;
		int adultPrice = 0;
		int teenPrice = 0;
		int peple = 0;
		
		
		if(req.getParameter("adult") != null) {
			adult = Integer.parseInt(req.getParameter("adult"));
			adultPrice = (ress.getprice(2))*adult;
			peple = teenager + adult;
		}
		
		if(req.getParameter("teenager") != null) {
			teenager = Integer.parseInt(req.getParameter("teenager"));
			pay.setId(1);
			teenPrice = (ress.getprice(1))*teenager;
			peple = teenager + adult;
		}
		
		int price = adultPrice + teenPrice;
		System.out.println(price);
		
		mv.addObject("poster", poster);
		mv.addObject("moviedata", moviedata);
		mv.addObject("btlist", btlist);
		mv.addObject("peple", peple);
		mv.addObject("Seat", Seat);
		mv.addObject("price", price);
		
		return mv;
	}
	
}