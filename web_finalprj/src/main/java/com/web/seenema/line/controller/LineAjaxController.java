package com.web.seenema.line.controller;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.web.seenema.line.dto.LineAddDTO;
import com.web.seenema.line.dto.LineDTO;
import com.web.seenema.line.service.LineService;

@RestController
@RequestMapping(value = "/lineajax")
public class LineAjaxController {
	
	@Autowired
	private LineService service;
	
	@RequestMapping(value = "/add")
	public JSONObject add(@ModelAttribute LineAddDTO dto) {
				
		JSONObject json = new JSONObject();
		if(service.add(dto)) {
			
			LineDTO line = service.getLine(dto.getId());
			String email = line.getEmail().split("@")[0];
			email = email.substring(0, email.length() - 2);
			email += "**";
			line.setEmail(email);

			json.put("res", "success");
			json.put("line", line);
		} else {
			json.put("res", "fail");
		}
		return json;
	}
	
	@RequestMapping(value = "/incGcnt")
	public JSONObject incGcnt(@RequestParam int lid) {
		
		JSONObject json = new JSONObject();
		
		int gcnt = service.incGcnt(lid);
		if(gcnt != -1) {
			json.put("res", "success");
			json.put("gcnt", gcnt);
		} else {
			json.put("res", "fail");
		}
		return json;
	}
	
	@RequestMapping(value = "/delete")
	public JSONObject delete(@RequestParam int lid) {
		
		JSONObject json = new JSONObject();
		
		if(service.delete(lid)) {
			json.put("result", "success");
			//json.put("lid", lid);
		} else {
			json.put("result", "fail");
		}
		return json;
	}
	
	@RequestMapping(value = "/ex7")
	public ModelAndView ex4() {
		ModelAndView mv = new ModelAndView("views/ex4");
		mv.addObject("", "");
		
		return mv;
	}
	
}

