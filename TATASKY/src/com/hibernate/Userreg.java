package com.hibernate;

/**
 * Userreg entity. @author MyEclipse Persistence Tools
 */

public class Userreg implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long userid;
	private String usertype;
	private String loginname;
	private String password;
	private String emailid;
	private String active;

	// Constructors

	/** default constructor */
	public Userreg() {
	}

	/** full constructor */
	public Userreg(String usertype, String loginname, String password,
			String emailid, String active) {
		this.usertype = usertype;
		this.loginname = loginname;
		this.password = password;
		this.emailid = emailid;
		this.active = active;
	}

	// Property accessors

	public Long getUserid() {
		return this.userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public String getUsertype() {
		return this.usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}

	public String getLoginname() {
		return this.loginname;
	}

	public void setLoginname(String loginname) {
		this.loginname = loginname;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmailid() {
		return this.emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public String getActive() {
		return this.active;
	}

	public void setActive(String active) {
		this.active = active;
	}

}