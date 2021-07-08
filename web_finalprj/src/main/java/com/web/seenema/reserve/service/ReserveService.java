package com.web.seenema.reserve.service;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.reserve.dto.BranchDTO;
import com.web.seenema.reserve.dto.BranchTheaterDTO;
import com.web.seenema.reserve.dto.RstepDTO;
import com.web.seenema.reserve.dto.SeatDTO;
import com.web.seenema.reserve.dto.TableRstepDTO;
import com.web.seenema.reserve.dto.TimeDTO;

public interface ReserveService {
//	public List<Map<String, Object>> movieList() throws Exception;
	public List<MovieDTO> movieList() throws Exception;
	public List<BranchDTO> branchList(int mid, Date date) throws Exception;
	public List<BranchDTO> branchList(String location) throws Exception;
	public List<TimeDTO> timeTableInfo() throws Exception;
	public Map<String, Object> seatcntlist(int tid) throws Exception;
	public List<SeatDTO> seatList(int tid) throws Exception;
	public int totalprice(RstepDTO dto) throws Exception;
	public int getprice(int id) throws Exception;
	public List<BranchTheaterDTO> getmovieTheater(int tid) throws Exception;
}
