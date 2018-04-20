package com.common;

/**
 * Photo entity. @author MyEclipse Persistence Tools
 */

public class Photo implements java.io.Serializable {

	// Fields

	private Integer id;
	private String filepath;

	// Constructors

	/** default constructor */
	public Photo() {
	}

	/** full constructor */
	public Photo(String filepath) {
		this.filepath = filepath;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFilepath() {
		return this.filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

}