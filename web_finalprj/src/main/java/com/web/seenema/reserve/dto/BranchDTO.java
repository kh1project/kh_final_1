package com.web.seenema.reserve.dto;

public class BranchDTO {
	private int id;
	private String loc;
	private String branch;
	private int cntByloc;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getLoc() {
		return loc;
	}
	
	public void setLoc(String loc) {
		this.loc = loc;
	}
	
	public String getBranch() {
		return branch;
	}
	
	public void setBranch(String branch) {
		this.branch = branch;
	}
	
	public int getCntByloc() {
		return cntByloc;
	}
	
	public void setCntByloc(int cntByloc) {
		this.cntByloc = cntByloc;
	}
	
}
