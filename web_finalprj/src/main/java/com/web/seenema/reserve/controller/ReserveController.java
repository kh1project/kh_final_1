package com.web.seenema.reserve.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.seenema.reserve.dto.RstepDTO;
import com.web.seenema.reserve.dto.SeatDTO;
import com.web.seenema.reserve.service.ReserveService;

@Controller
@RequestMapping(value = "/reserve")
public class ReserveController {
	
	@Autowired
	private ReserveService ress;
	
	@RequestMapping(value = "")
	public ModelAndView reserve() {
		ModelAndView mv = new ModelAndView("reserve/reserve");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/schedule")
	public ModelAndView schedule() {
		ModelAndView mv = new ModelAndView("reserve/schedule");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/time")
	public ModelAndView time() {
		ModelAndView mv = new ModelAndView("reserve/time");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/seats", method = RequestMethod.GET)
	public ModelAndView seats() throws Exception {
		List<SeatDTO> seatlists = ress.seatList(1);
		
		Map<String, Object> seatcnt = ress.seatcntlist(1);
		
		int rating = 19; // 임시 연령
		
		ModelAndView mv = new ModelAndView("reserve/seats");
		
		mv.addObject("rating", rating);
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

