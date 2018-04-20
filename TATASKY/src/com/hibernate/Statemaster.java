package com.hibernate;

/**
 * Statemaster entity. @author MyEclipse Persistence Tools
 */

public class Statemaster implements java.io.Serializable {

	// Fields

	private Long stateid;
	private String statename;
	private String active;

	// Constructors

	/** default constructor */
	public Statemaster() {
	}

	/** full constructor */
	public Statemaster(String statename, String active) {
		this.statename = statename;
		this.active = active;
	}

	// Property accessors

	public Long getStateid() {
		return this.stateid;
	}

	public void setStateid(Long stateid) {
		this.stateid = stateid;
	}

	public String getStatename() {
		return this.statename;
	}

	public void setStatename(String statename) {
		this.statename = statename;
	}

	public String getActive() {
		return this.active;
	}

	public void setActive(String active) {
		this.active = active;
	}

}