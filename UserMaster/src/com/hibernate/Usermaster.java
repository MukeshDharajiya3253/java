package com.hibernate;

/**
 * Usermaster entity. @author MyEclipse Persistence Tools
 */

public class Usermaster implements java.io.Serializable {

	// Fields

	private Long userid;
	private String username;
	private String usertype;
	private String userloginname;
	private String userpassword;
	private String useremail;
	private Long usercontact;
	private String useraddress;
	private String userphoto;
	private Integer stateid;
	private Integer cityid;
	private String active;

	// Constructors

	/** default constructor */
	public Usermaster() {
	}

	/** full constructor */
	public Usermaster(String username, String usertype, String userloginname,
			String userpassword, String useremail, Long usercontact,
			String useraddress, String userphoto, Integer stateid,
			Integer cityid, String active) {
		this.username = username;
		this.usertype = usertype;
		this.userloginname = userloginname;
		this.userpassword = userpassword;
		this.useremail = useremail;
		this.usercontact = usercontact;
		this.useraddress = useraddress;
		this.userphoto = userphoto;
		this.stateid = stateid;
		this.cityid = cityid;
		this.active = active;
	}

	// Property accessors

	public Long getUserid() {
		return this.userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUsertype() {
		return this.usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}

	public String getUserloginname() {
		return this.userloginname;
	}

	public void setUserloginname(String userloginname) {
		this.userloginname = userloginname;
	}

	public String getUserpassword() {
		return this.userpassword;
	}

	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}

	public String getUseremail() {
		return this.useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

	public Long getUsercontact() {
		return this.usercontact;
	}

	public void setUsercontact(Long usercontact) {
		this.usercontact = usercontact;
	}

	public String getUseraddress() {
		return this.useraddress;
	}

	public void setUseraddress(String useraddress) {
		this.useraddress = useraddress;
	}

	public String getUserphoto() {
		return this.userphoto;
	}

	public void setUserphoto(String userphoto) {
		this.userphoto = userphoto;
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