package com.hibernate;

/**
 * Gstinmaster entity. @author MyEclipse Persistence Tools
 */

public class Gstinmaster implements java.io.Serializable {

	// Fields

	private Long gstinid;
	private String gstinno;
	private String address;
	private Integer contry;
	private Integer stateid;
	private Integer cityid;
	private String active;

	// Constructors

	/** default constructor */
	public Gstinmaster() {
	}

	/** full constructor */
	public Gstinmaster(String gstinno, String address, Integer contry,
			Integer stateid, Integer cityid, String active) {
		this.gstinno = gstinno;
		this.address = address;
		this.contry = contry;
		this.stateid = stateid;
		this.cityid = cityid;
		this.active = active;
	}

	// Property accessors

	public Long getGstinid() {
		return this.gstinid;
	}

	public void setGstinid(Long gstinid) {
		this.gstinid = gstinid;
	}

	public String getGstinno() {
		return this.gstinno;
	}

	public void setGstinno(String gstinno) {
		this.gstinno = gstinno;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getContry() {
		return this.contry;
	}

	public void setContry(Integer contry) {
		this.contry = contry;
	}

	public Integer getStateid() {
		return this.stateid;
	}

	public void setStateid(Integer stateid) {
		this.stateid = stateid;
	}

	public Integer getCityid() {
		return this.cityid;
	}

	public void setCityid(Integer cityid) {
		this.cityid = cityid;
	}

	public String getActive() {
		return this.active;
	}

	public void setActive(String active) {
		this.active = active;
	}

}