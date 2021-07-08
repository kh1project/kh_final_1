package com.web.seenema.repository;

import java.util.List;

import com.web.seenema.dto.BoxofficeDTO;

public interface MainRepository {

	public List<Integer> selectCarouselList();
	public List<BoxofficeDTO> selectBoxofficeList();
	public boolean updateGcnt(int id);
	public int selectGcnt(int id);
}
