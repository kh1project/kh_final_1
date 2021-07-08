package com.web.seenema.account.controller;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.seenema.account.service.AccountService;

@Controller
@RequestMapping(value = "/accountAjax")
public class AccountAjaxController {
	
	@Autowired
	AccountService account;
	
	@RequestMapping(value = "/nickname", method = RequestMethod.GET
			, produces = "application/json; charset=utf-8")
		@ResponseBody	// ViewResolver 를 사용하지 않음.
		public String checkNickname(@RequestParam String nickname) throws Exception {
			// 결과가 false 일 때 사용중인 닉네임이 없다.
			boolean res = account.checkNickname(nickname);
			
			// response.setContentType("application/json; charset=utf-8");
			JSONObject json = new JSONObject();
			if(res) {
				// 사용중인 닉네임이 존재합니다.
				json.put("result", true);
			} else {
				// 사용하지 않는 닉네임 입니다.
				json.put("result", false);
			}
			return json.toJSONString();
		}
	
	@RequestMapping(value = "/email", method = RequestMethod.GET
			, produces = "application/json; charset=utf-8")
		@ResponseBody
		public String checkEmail(@RequestParam String email) throws Exception {
			// 결과가 false 일 때 사용중인 이메일이 없다.
			boolean res = account.checkEmail(email);
			
			JSONObject json = new JSONObject();
			if(res) {
				// 사용중인 이메일이 존재합니다.
				json.put("result", true);
			} else {
				// 사용하지 않는 이메일 입니다.
				json.put("result", false);
			}
			return json.toJSONString();
		}
	
	@RequestMapping(value = "/ex3")
	public ModelAndView ex3() {
		ModelAndView mv = new ModelAndView("views/ex3");
		mv.addObject("", "");
		
		return mv;
	}

}

