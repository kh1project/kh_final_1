package com.web.seenema.line.repository;

import java.util.List;

import com.web.seenema.line.dto.LineAddDTO;
import com.web.seenema.line.dto.LineDTO;

public interface LineRepository {

	public List<LineDTO> selectLinelist(int mid);
	public boolean insertLine(LineAddDTO dto);
	public LineDTO selectLineOne(int id);
	public int updateGcnt(int lid);
	public int selectGcnt(int lid);
	public boolean updateDeleted(int lid);
}
