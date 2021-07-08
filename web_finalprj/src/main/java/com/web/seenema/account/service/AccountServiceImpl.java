package com.web.seenema.account.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.seenema.account.dto.AccountDTO;
import com.web.seenema.account.repository.AccountRepositoryImpl;

@Service
public class AccountServiceImpl implements AccountService {
	
	@Autowired
	AccountRepositoryImpl dao;

	@Override
	public AccountDTO accountInfoDetail(AccountDTO dto) throws Exception {
		return dao.select(dto);
	}

	@Override
	public List<AccountDTO> accountInfoList() throws Exception {
		return dao.selectList();
	}

	@Override
	public boolean join(AccountDTO dto) throws Exception {
		return dao.insert(dto);
	}

	@Override
	public boolean checkNickname(String nickname) throws Exception {
		boolean result = true;
		int rs = dao.usedNickname(nickname);
		if(rs == 0) {
			result = false;
		}
		return result;
	}

	@Override
	public boolean checkEmail(String email) throws Exception {
		boolean result = true;
		int rs = dao.usedEmail(email);
		if(rs == 0) {
			result = false;
		}
		return result;
	}

	@Override
	public void login(AccountDTO dto) throws Exception {
		AccountDTO data = dao.checkUser(dto);
		if(data != null) {
			dto.setId(data.getId());
			dto.setUsername(data.getUsername());
			dto.setNickname(data.getNickname());
			dto.setEmail(data.getEmail());
			dto.setPassword("");
			dto.setGender(data.getGender());
			dto.setAge(data.getAge());
			dto.setLogindate(data.getLogindate());
			dto.setJoindate(data.getJoindate());			
		} else {
			dto.setId(-1);
			dto.setPassword("");
		}
	}

	@Override
	public boolean login() throws Exception {
		return false;
	}

	@Override
	public boolean changeNickname() throws Exception {
		return false;
	}

	@Override
	public boolean changePassword() throws Exception {
		return false;
	}

}
