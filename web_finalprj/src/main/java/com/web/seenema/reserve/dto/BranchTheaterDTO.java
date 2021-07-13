package com.web.seenema.reserve.dto;

public class BranchTheaterDTO {
	private int tid;			// movie_theater - 아이디
	private String location;	// branch - 지역명
	private String bname;		// branch - 지점명
	private String tname;		// theater - 상영관 이름
	
	public int getTid() {
		return tid;
	}
	
	public void setTid(int tid) {
		this.tid = tid;
	}
	
	public String getLocation() {
		return location;
	}
	
	public void setLocation(String location) {
		this.location = location;
	}
	
	public String getBname() {
		return bname;
	}
	
	public void setBname(String bname) {
		this.bname = bname;
	}
	
	public String getTname() {
		return tname;
	}
	
	public void setTname(String tname) {
		this.tname = tname;
	}
	
	
}
