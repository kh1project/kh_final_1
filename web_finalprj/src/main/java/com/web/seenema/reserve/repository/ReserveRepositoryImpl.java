package com.web.seenema.reserve.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.seenema.reserve.dto.BranchDTO;
import com.web.seenema.reserve.dto.RstepDTO;
import com.web.seenema.reserve.dto.SeatDTO;
import com.web.seenema.reserve.dto.TableRstepDTO;

@Repository
public class ReserveRepositoryImpl implements ReserveRepository{

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<Map<String, Object>> selectMovieList() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BranchDTO> selectBranchList(TableRstepDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<TableRstepDTO> selectRestInfo(TableRstepDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Map<String, Object>> selectSeatCnt(RstepDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Map<String, Object>> selectSeatFrame(RstepDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Integer> selectRseatList(RstepDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean updateSeat(RstepDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int selectPrice(RstepDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Map<String, Object>> selectSeatCnt(SeatDTO seatdto) throws Exception {
		seatdto.setTid(1);
		int res = sqlSession.selectOne("reserveMapper.seatcnt", seatdto);
		System.out.println(res);
		return null;
	}

}
