package com.web.seenema.reserve.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.reserve.dto.BranchDTO;
import com.web.seenema.reserve.dto.RstepDTO;
import com.web.seenema.reserve.dto.SeatDTO;
import com.web.seenema.reserve.dto.TableRstepDTO;
import com.web.seenema.reserve.service.ReserveService;

@Controller
@RequestMapping(value = "/reserve")
public class ReserveController {
	
	@Autowired
	private ReserveService ress;
	
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
	
//	@RequestMapping(value = "/schedule", method = RequestMethod.GET)
//	public ModelAndView schedule(String loc) throws Exception {
//		ModelAndView mv = new ModelAndView();
//
//		System.out.println("Controller loc : " + loc);
//		
//		if(loc == null) {
//			loc = "서울";
//		}
//		List<BranchDTO> branchlist = null;
//		
//		branchlist = ress.branchList(loc);
//
//		
//		mv.setViewName("reserve/schedule");
//		mv.addObject("branchlist", branchlist);
//		
//		return mv;
//	}
	
	@RequestMapping(value = "/time")
	public String timeList(Model m) throws Exception {
		List<TableRstepDTO> time = ress.timeTableInfo();
		m.addAttribute("timelist", time);
		return "reserve/time";
	}
	
	@RequestMapping(value = "/seats", method = RequestMethod.GET)
	public ModelAndView seats() throws Exception {
		List<SeatDTO> seatlists = ress.seatList(1);
		
		Map<String, Object> seatcnt = ress.seatcntlist(1);
		
		ModelAndView mv = new ModelAndView("reserve/seats");
		mv.addObject("seatlists", seatlists);
		mv.addObject("seatcnt", seatcnt);
		
		return mv;
	}
	
	@RequestMapping(value = "/reservecheck")
	public ModelAndView reservecheck() {
		ModelAndView mv = new ModelAndView("reserve/reservecheck");
		mv.addObject("", "");
		
		return mv;
	}
	
}

