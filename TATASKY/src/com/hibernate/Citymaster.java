package com.hibernate;

/**
 * Citymaster entity. @author MyEclipse Persistence Tools
 */

public class Citymaster implements java.io.Serializable {

	// Fields

	private Long cityid;
	private String cityname;
	private Long stateid;
	private String active;

	// Constructors

	/** default constructor */
	public Citymaster() {
	}

	/** full constructor */
	public Citymaster(String cityname, Long stateid, String active) {
		this.cityname = cityname;
		this.stateid = stateid;
		this.active = active;
	}

	// Property accessors

	public Long getCityid() {
		return this.cityid;
	}

	public void setCityid(Long cityid) {
		this.cityid = cityid;
	}

	public String getCityname() {
		return this.cityname;
	}

	public void setCityname(String cityname) {
		this.cityname = cityname;
	}

	public Long getStateid() {
		return this.stateid;
	}

	public void setStateid(Long stateid) {
		this.stateid = stateid;
	}

	public String getActive() {
		return this.active;
	}

	public void setActive(String active) {
		this.active = active;
	}

}