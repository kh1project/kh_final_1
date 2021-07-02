package com.web.seenema.movie.dto;

import java.sql.Date;

public class MovieDTO {
	private int id;
	private String title;
	private String summary;
	private String type;
	private String director;
	private String genre;
	private int runningtime;
	private int reating;
	private String actor;
	private Date playdate;
	private int rcnt;
	private float rrate;
	private int rank;
	private int gcnt;
	private float grade;
	
	public MovieDTO() {}
	
	public MovieDTO(int id, String title, String summary, String type, String director, String genre, int runningtime, int reating,
			String actor, Date playdate, int rcnt, int gcnt, float grade) {
		super();
		this.id = id;
		this.title = title;
		this.summary = summary;
		this.type = type;
		this.director = director;
		this.genre = genre;
		this.runningtime = runningtime;
		this.reating = reating;
		this.actor = actor;
		this.playdate = playdate;
		this.rcnt = rcnt;
		this.gcnt = gcnt;
		this.grade = grade;
	}

	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getSummary() {
		return summary;
	}
	
	public void setSummary(String summary) {
		this.summary = summary;
	}
	
	public String getType() {
		return type;
	}
	
	public void setType(String type) {
		this.type = type;
	}
	
	public String getDirector() {
		return director;
	}
	
	public void setDirector(String director) {
		this.director = director;
	}
	
	public String getGenre() {
		return genre;
	}
	
	public void setGenre(String genre) {
		this.genre = genre;
	}
	
	public int getRunningtime() {
		return runningtime;
	}
	
	public void setRunningtime(int runningtime) {
		this.runningtime = runningtime;
	}
	
	public int getReating() {
		return reating;
	}
	
	public void setReating(int reating) {
		this.reating = reating;
	}
	
	public String getActor() {
		return actor;
	}
	
	public void setActor(String actor) {
		this.actor = actor;
	}
	
	public Date getPlaydate() {
		return playdate;
	}
	
	public void setPlaydate(Date playdate) {
		this.playdate = playdate;
	}
	
	public int getRcnt() {
		return rcnt;
	}
	
	public void setRcnt(int rcnt) {
		this.rcnt = rcnt;
	}
	
	public float getRrate() {
        return rrate;
    }
	
    public void setRrate(float rrate) {
    	this.rrate = rrate;
    }

    public int getRank() {
        return rank;
    }

    public void setRank(int rank) {
    	this.rank = rank;
    }
	
	public int getGcnt() {
		return gcnt;
	}
	
	public void setGcnt(int gcnt) {
		this.gcnt = gcnt;
	}
	
	public float getGrade() {
		return grade;
	}
	
	public void setGrade(float grade) {
		this.grade = grade;
	}
	
}
