package com.web.seenema.reserve.dto;

public class SeatDTO {
	private int id;
	private int tid;
	private int seatrow;
	private char seatcol;
	private char reserved;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public int getTid() {
		return tid;
	}
	
	public void setTid(int tid) {
		this.tid = tid;
	}
	
	public int getSeatrow() {
		return seatrow;
	}
	
	public void setSeatrow(int seatrow) {
		this.seatrow = seatrow;
	}
	
	public char getSeatcol() {
		return seatcol;
	}
	
	public void setSeatcol(char seatcol) {
		this.seatcol = seatcol;
	}
	
	public char getReserved() {
		return reserved;
	}
	
	public void setReserved(char reserved) {
		this.reserved = reserved;
	}
	
}
