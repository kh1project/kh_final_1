package com.web.seenema.review.controller;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.web.seenema.account.service.AccountServiceImpl;
import com.web.seenema.movie.dto.MyMovieDTO;
import com.web.seenema.review.dto.ReviewPostDTO;
import com.web.seenema.review.service.ReviewServiceImpl;

@RestController
@RequestMapping(value = "/reviewajax")
public class ReviewAjaxController {
	
	@Autowired
	private AccountServiceImpl account;
	@Autowired
	private ReviewServiceImpl review;
	
	@RequestMapping(value = "/addstep1", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
	@ResponseBody	// ViewResolver 를 사용하지 않음.
	public List<MyMovieDTO> addstep1(@RequestParam int selectmovie) throws Exception {
		
		List<MyMovieDTO> smovieimgs = account.mywatchSelect(selectmovie);
		
//		for(int i = 0; i < smovieimgs.size(); i++) {
//			System.out.println(smovieimgs.get(i).getPath() + smovieimgs.get(i).getName() );
//		}
		//왜 요청이 두번씩 되는지?
				
		return smovieimgs;
	}
	
	@RequestMapping(value = "/addstep2", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<Integer> addstep2(@RequestParam String jsonData) throws Exception {
		
		Gson gson = new Gson();
		Type type = new TypeToken<ArrayList<Map<String, String>>>() {}.getType();
		ArrayList<Map<String, String>> postlist = gson.fromJson(jsonData, type);
		
		List<Integer> mergePost = review.addPost(postlist);
		//여기서 받은 값을 ReviewController의 /add mothod post로 넘겨줘야함. 우선 다시 ajax로 반환.
		return mergePost;
	}
	
	@RequestMapping(value = "/ex13")
	public ModelAndView ex3() {
		ModelAndView mv = new ModelAndView("views/ex3");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/ex14")
	public ModelAndView ex4() {
		ModelAndView mv = new ModelAndView("views/ex4");
		mv.addObject("", "");
		
		return mv;
	}
	
	@RequestMapping(value = "/ex5")
	public ModelAndView ex5() {
		ModelAndView mv = new ModelAndView("views/ex5");
		mv.addObject("", "");
		
		return mv;
	}
	
}

