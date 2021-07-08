package com.web.seenema.reserve.dto;

public class BranchTheaterDTO {
	private String location;	// branch - 지역명
	private String bname;		// branch - 지점명
	private String tname;		// theater - 상영관 이름
	
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
