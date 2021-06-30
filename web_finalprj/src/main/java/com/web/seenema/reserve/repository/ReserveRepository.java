package com.web.seenema.reserve.repository;

import java.util.List;
import java.util.Map;

import com.web.seenema.reserve.dto.BranchDTO;
import com.web.seenema.reserve.dto.RstepDTO;
import com.web.seenema.reserve.dto.SeatDTO;
import com.web.seenema.reserve.dto.TableRstepDTO;

public interface ReserveRepository {
	public List<Map<String, Object>> selectMovieList() throws Exception;
	public List<BranchDTO> selectBranchList(TableRstepDTO dto) throws Exception;
	public List<TableRstepDTO> selectRestInfo(TableRstepDTO dto) throws Exception;
	public List<Map<String, Object>> selectSeatCnt(RstepDTO dto) throws Exception;
	public List<Map<String, Object>> selectSeatFrame(RstepDTO dto) throws Exception;
	public List<Integer> selectRseatList(RstepDTO dto) throws Exception;
	public boolean updateSeat(RstepDTO dto) throws Exception;
	public int selectPrice(RstepDTO dto) throws Exception;
	public List<Map<String, Object>> selectSeatCnt(SeatDTO seatdto) throws Exception;
}
