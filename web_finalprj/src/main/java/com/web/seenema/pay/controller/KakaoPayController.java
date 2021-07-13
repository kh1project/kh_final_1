package com.web.seenema.pay.controller;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.web.seenema.account.dto.AccountDTO;
import com.web.seenema.account.service.AccountService;
import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.movie.service.MovieService;
import com.web.seenema.pay.dto.PaymentDTO;
import com.web.seenema.reserve.dto.BranchTheaterDTO;
import com.web.seenema.reserve.dto.ReservationDTO;
import com.web.seenema.reserve.dto.SeatDTO;
import com.web.seenema.reserve.service.ReserveService;

@Controller
@RequestMapping(value = "/kakaopay")
public class KakaoPayController {
	
	@Autowired
	private ReserveService ress;
	
	@Autowired
	private MovieService movies;
	
	@Autowired
	private AccountService account;
	
	@RequestMapping(value = "",  method= RequestMethod.POST)
	public String payment(HttpServletRequest req,
			Model m, @ModelAttribute PaymentDTO paydto) throws Exception {
		String forward = "";
		// 주문자가 결제 요청한 상품의 정보를 확인 후 카카오페이 서버에 상품관련 결제준비 정보 전송
		HttpSession session = req.getSession();
		
		// 상품 정보를 확인하기 위한 코드 작성 시작
		
		Date today = new Date();
		SimpleDateFormat rdate = new SimpleDateFormat("yy/MM/dd");
		SimpleDateFormat date = new SimpleDateFormat("yyMMdd");
		
		String orderid = "";
		// accountid 가져오기
		AccountDTO adto = (AccountDTO)session.getAttribute("account");
		
		
		// 예매번호 : 년월일 + 시간(아직 시간 정보 가져오지 않음) + 영화정보 + 좌석정보
		
		// 상품 정보를 확인하기 위한 코드 작성 끝
		
		// 카카오페이 서버 결제준비 정보 전송 시작
		MultiValueMap<String, String> param = new LinkedMultiValueMap<String, String>();
		param.add("cid", "TC0ONETIME");
		param.add("partner_order_id", "1");
		param.add("partner_user_id", "admin");
		param.add("item_name", "test");
		param.add("quantity", "1");
		param.add("total_amount", "16000");
		int tax_free = (Integer.parseInt("16000") / 10 * 9);
		param.add("tax_free_amount", Integer.toString(tax_free));
		param.add("approval_url", "http://localhost/seenema/kakaopay/success");
		param.add("cancel_url", "http://localhost/seenema/kakaopay/cancel");
		param.add("fail_url", "http://localhost/seenema/kakaopay/fail");
		
		System.out.println("요청 데이터 : " + param.toString());
		
		// REST API를 사용하여 카카오페이 서버에 위의 데이터 전송
		RestTemplate rest = new RestTemplate();
		rest.setRequestFactory(new HttpComponentsClientHttpRequestFactory());
		
		HttpHeaders headers = new HttpHeaders();
		headers.set("Authorization", "KakaoAK d89a7a4709ce5b449b4cd03acdce548a");
		headers.set("Content-type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=utf-8");
		
		HttpEntity<MultiValueMap<String, String>> entity = new HttpEntity<>(param, headers);
		
		String url = "https://kapi.kakao.com/v1/payment/ready";
		ResponseEntity<String> resp = rest.postForEntity(url, entity, String.class);
		
		System.out.println("응답 데이터 : " + resp.getBody());
		
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> resp_data = mapper.readValue(resp.getBody(), HashMap.class);
		
		String tid = (String)resp_data.get("tid");  // 데이터 베이스에 저장해야 함
		String redirect_pc = (String)resp_data.get("next_redirect_pc_url");
		
		// 임시로 작성한 코드(WAS 전역 메모리에 저장) 반드시 데이터베이스로 저장하도록 해야함.
		req.getServletContext().setAttribute("tid", tid);
		req.getServletContext().setAttribute("partner_order_id", orderid);
		req.getServletContext().setAttribute("partner_user_id", "admin");
		
		ReservationDTO resdto = new ReservationDTO();
		resdto.setId(orderid);
		resdto.setAid(1);
		resdto.setSid(2);
		
		m.addAttribute("", "");
		
		forward = "redirect:" + redirect_pc;
		// 카카오페이 서버 결제준비 정보 전송 끝
		
		return forward;
	}
	
	@RequestMapping(value = "/success")
	public String success(@RequestParam String pg_token,
			HttpServletRequest req, Model m, @ModelAttribute ReservationDTO resDTO) throws Exception {
		String forward = "";
		HttpSession session = req.getSession();
		
		System.out.println(resDTO.getId());
		System.out.println(resDTO.getAid());
		System.out.println(resDTO.getPayment());
		System.out.println(resDTO.getSid());
		
		// 좌석 정보
		String[] seats = new String[5];
		char row = 'a';
		int col = 0;
		
		int seatRes = 0;
		int insertres = 0;
		
		// accountid 가져오기
		AccountDTO adto = (AccountDTO)session.getAttribute("account");
		
		// 예매 하기.
		
		
		MultiValueMap<String, String> param = new LinkedMultiValueMap<String, String>();
		param.add("cid", "TC0ONETIME");
		param.add("tid", (String)req.getServletContext().getAttribute("tid"));
		param.add("partner_order_id", "1");
		param.add("partner_user_id", "admin");
		param.add("pg_token", pg_token);
		
		RestTemplate rest = new RestTemplate();
		rest.setRequestFactory(new HttpComponentsClientHttpRequestFactory());
		
		HttpHeaders headers = new HttpHeaders();
		headers.set("Authorization", "KakaoAK d89a7a4709ce5b449b4cd03acdce548a");
		headers.set("Content-type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=utf-8");
		
		HttpEntity<MultiValueMap<String, String>> entity = new HttpEntity<>(param, headers);
		
		String url = "https://kapi.kakao.com/v1/payment/approve";
		ResponseEntity<String> resp = rest.postForEntity(url, entity, String.class);
		
		ObjectMapper mapper = new ObjectMapper();
		Map<String, Object> resp_data = mapper.readValue(resp.getBody(), HashMap.class);
		
		if(resp.getStatusCode() == HttpStatus.OK) {
			// 데이터베이스 저장을 위한 추가 작업
			forward = "kakaopay/success";
			
			
		} else if(resp.getStatusCode() == HttpStatus.BAD_REQUEST) {
			forward = "kakaopay/fail";
		}
		
		System.out.println(resp.getBody());
		
		m.addAttribute("reserve", "예매정보 가져오기");
		return forward;
	}

	private Object charAt(int i) {
		// TODO Auto-generated method stub
		return null;
	}
}
