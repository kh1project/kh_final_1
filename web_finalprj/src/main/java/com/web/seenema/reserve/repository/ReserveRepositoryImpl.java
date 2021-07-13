package com.web.seenema.reserve.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.seenema.movie.dto.MovieDTO;
import com.web.seenema.reserve.dto.BranchDTO;
import com.web.seenema.reserve.dto.BranchTheaterDTO;
import com.web.seenema.reserve.dto.ReservationDTO;
import com.web.seenema.reserve.dto.RstepDTO;
import com.web.seenema.reserve.dto.SeatDTO;
import com.web.seenema.reserve.dto.TableRstepDTO;
import com.web.seenema.reserve.dto.TimeDTO;

@Repository
public class ReserveRepositoryImpl implements ReserveRepository{

	@Autowired
	SqlSession sqlSession;

//	@Override
//	public List<Map<String, Object>> selectMovieList() throws Exception {
//		return sqlSession.selectList("reserveMapper.movieAll_list");
//	}
	
	@Override
	public List<MovieDTO> selectMovieList(String location, String name) throws Exception {
		Map<String, Object> data = new HashMap<>();
		data.put("location", location);
		data.put("name", name);
		return sqlSession.selectList("reserveMapper.movieAll_list", data);
	}

	@Override
	public List<TimeDTO> selectTimeList(String location, String name,
			int rating, String title, String moviedate) throws Exception {
		Map<String, Object> data = new HashMap<>();
		data.put("location", location);
		data.put("name", name);
		data.put("rating", rating);
		data.put("title", title);
		data.put("moviedate", moviedate);
		System.out.println("repo" + data);
		return sqlSession.selectList("reserveMapper.timelist", data);
	}
	
	@Override
	public List<BranchDTO> selectBranchList(String location) throws Exception {
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

	@Override
	public int searchprice(int id) throws Exception {
		int pay = sqlSession.selectOne("reserveMapper.pay_all", id);
		return pay;
	}

	@Override
	public List<BranchTheaterDTO> selectMovieTheater(int tid) throws Exception {
		List<BranchTheaterDTO> mtlist = sqlSession.selectList("reserveMapper.search_Branch", tid);
		
		return mtlist;
	}

	@Override
	public List<SeatDTO> selectSeat(int tid, char row, int col) {
		Map<String, Object> data = new HashMap<>();
			data.put("tid", tid);
			data.put("row", row);
			data.put("col", col);
		return sqlSession.selectList("reserveMapper.checkseat", data);
	}

	@Override
	public int updateSeat(int tid, char row, int col) {
		Map<String, Object> data = new HashMap<>();
			data.put("tid", tid);
			data.put("row", row);
			data.put("col", col);
		return sqlSession.update("reserveMapper.updateSeat", data);
	}

	@Override
	public int insertReserve(ReservationDTO resdto) {
		System.out.println(resdto.getSid());
		return sqlSession.insert("reserveMapper.reserveInsert", resdto);
	}

}
