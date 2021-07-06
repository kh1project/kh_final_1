package com.web.seenema.reserve.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.reserve.dto.BranchDTO;
import com.web.seenema.reserve.dto.RstepDTO;
import com.web.seenema.reserve.dto.SeatDTO;
import com.web.seenema.reserve.dto.TableRstepDTO;

@Repository
public class ReserveRepositoryImpl implements ReserveRepository{

	@Autowired
	SqlSession sqlSession;

//	@Override
//	public List<Map<String, Object>> selectMovieList() throws Exception {
//		return sqlSession.selectList("reserveMapper.movieAll_list");
//	}
	
	@Override
	public List<MovieDTO> selectMovieList() throws Exception {
		return sqlSession.selectList("reserveMapper.movieAll_list");
	}

	@Override
	public List<BranchDTO> selectBranchList(TableRstepDTO dto) throws Exception {
		return null;
	}
	
	@Override
	public List<BranchDTO> selectBranchList(String location) throws Exception {
		System.out.println("Repository loc : " + location);
		return sqlSession.selectList("reserveMapper.branchlist", location);
	}

	@Override
	public List<TableRstepDTO> selectRestInfo(TableRstepDTO dto) throws Exception {
		return null;
	}

	@Override
	public List<Map<String, Object>> selectSeatCnt(RstepDTO dto) throws Exception {
		return null;
	}

	@Override
	public List<Map<String, Object>> selectSeatFrame(RstepDTO dto) throws Exception {
		return null;
	}

	@Override
	public List<Integer> selectRseatList(RstepDTO dto) throws Exception {
		return null;
	}

	@Override
	public boolean updateSeat(RstepDTO dto) throws Exception {
		return false;
	}

	@Override
	public int selectPrice(RstepDTO dto) throws Exception {
		return 0;
	}

	@Override
	public Map<String, Object> selectSeatCnt(int tid) throws Exception {
		int scnt = sqlSession.selectOne("reserveMapper.seatcnt", tid);
		int s_leftcnt = sqlSession.selectOne("reserveMapper.s_leftcnt", tid);
		
		Map<String, Object> seatmap = new HashMap<String, Object>();
		
		seatmap.put("scnt", scnt);
		seatmap.put("s_leftcnt", s_leftcnt);
		
		return seatmap;
	}
	
	@Override
	public List<SeatDTO> selectSeatAll(int tid) throws Exception {
		List<SeatDTO> seatdata = sqlSession.selectList("reserveMapper.seat_all", tid);
		
		return seatdata;
	}

}
