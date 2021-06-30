package com.web.seenema.reserve.service;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.seenema.reserve.dto.BranchDTO;
import com.web.seenema.reserve.dto.RstepDTO;
import com.web.seenema.reserve.dto.SeatDTO;
import com.web.seenema.reserve.dto.TableRstepDTO;
import com.web.seenema.reserve.repository.ReserveRepository;

@Service
public class ReserveServiceImpl implements ReserveService {
	
	@Autowired
	private ReserveRepository dao;

	@Override
	public List<Map<String, Object>> movieList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BranchDTO> branchList(int mid, Date date) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BranchDTO> branchList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<TableRstepDTO> tableInfo(int mid, Date date, String loc) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Map<String, Object>> seatList(SeatDTO seatdto) throws Exception {
		dao.selectSeatCnt(seatdto);
		return null;
	}

	@Override
	public int totalprice(RstepDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
